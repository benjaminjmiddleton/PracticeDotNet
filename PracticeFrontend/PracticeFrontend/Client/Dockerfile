FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY PracticeFrontend.Client.csproj .
RUN dotnet restore "PracticeFrontend.Client.csproj"
COPY . .
RUN dotnet publish "PracticeFrontend.Client.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM nginx:alpine
COPY --from=build /app/publish/wwwroot /usr/share/nginx/html

