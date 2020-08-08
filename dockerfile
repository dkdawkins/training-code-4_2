FROM mcr.microsoft.com/dotnet/core/sdk
WORKDIR /app
# from the path on the physical machine to the image environment
COPY . .
ENV ASPNETCORE_URLS='http://*:5000'
CMD [ "dotnet", "run", "-p", "DevopsCI.Client/DevopsCI.Client.csproj" ]