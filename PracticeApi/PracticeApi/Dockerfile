FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY ["PracticeApi/PracticeApi.csproj", "PracticeApi/"]
RUN dotnet restore "./PracticeApi/./PracticeApi.csproj"
COPY . .
WORKDIR "/src/PracticeApi"
RUN dotnet publish "./PracticeApi.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "PracticeApi.dll"]