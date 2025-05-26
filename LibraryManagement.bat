dotnet new sln --name LibraryManagement


dotnet new classlib -o LibraryManagement.Domain/LibraryManagement.Domain


dotnet new classlib -o LibraryManagement.Application/LibraryManagement.Application


dotnet new classlib -o LibraryManagement.Infrastructure/LibraryManagement.Infrastructure


dotnet new wpf -o LibraryManagement.Presentation/LibraryManagement.Presentation

dotnet sln add .\LibraryManagement.Domain\LibraryManagement.Domain\LibraryManagement.Domain.csproj
dotnet sln add .\LibraryManagement.Application\LibraryManagement.Application\LibraryManagement.Application.csproj
dotnet sln add .\LibraryManagement.Infrastructure\LibraryManagement.Infrastructure\LibraryManagement.Infrastructure.csproj
dotnet sln add .\LibraryManagement.Presentation\LibraryManagement.Presentation\LibraryManagement.Presentation.csproj


dotnet add package MediatR --project .\LibraryManagement.Application\LibraryManagement.Application\LibraryManagement.Application.csproj

dotnet add package Microsoft.Extensions.DependencyInjection.Abstractions --project .\LibraryManagement.Application\LibraryManagement.Application\LibraryManagement.Application.csproj

dotnet add package Microsoft.EntityFrameworkCore.Sqlite --project .\LibraryManagement.Infrastructure\LibraryManagement.Infrastructure\LibraryManagement.Infrastructure.csproj


dotnet add package Dapper --project .\LibraryManagement.Infrastructure\LibraryManagement.Infrastructure\LibraryManagement.Infrastructure.csproj


dotnet add package Microsoft.Extensions.Hosting --project .\LibraryManagement.Presentation\LibraryManagement.Presentation\LibraryManagement.Presentation.csproj
dotnet add package Microsoft.Extensions.Hosting.Abstractions --project .\LibraryManagement.Presentation\LibraryManagement.Presentation\LibraryManagement.Presentation.csproj

dotnet add package CommunityToolkit.Mvvm --project .\LibraryManagement.Presentation\LibraryManagement.Presentation\LibraryManagement.Presentation.csproj

dotnet add .\LibraryManagement.Application\LibraryManagement.Application\LibraryManagement.Application.csproj reference .\LibraryManagement.Domain\LibraryManagement.Domain\LibraryManagement.Domain.csproj

dotnet add .\LibraryManagement.Infrastructure\LibraryManagement.Infrastructure\LibraryManagement.Infrastructure.csproj reference .\LibraryManagement.Domain\LibraryManagement.Domain\LibraryManagement.Domain.csproj

dotnet add .\LibraryManagement.Infrastructure\LibraryManagement.Infrastructure\LibraryManagement.Infrastructure.csproj reference .\LibraryManagement.Application\LibraryManagement.Application\LibraryManagement.Application.csproj

dotnet add .\LibraryManagement.Presentation\LibraryManagement.Presentation\LibraryManagement.Presentation.csproj reference .\LibraryManagement.Application\LibraryManagement.Application\LibraryManagement.Application.csproj

dotnet add .\LibraryManagement.Presentation\LibraryManagement.Presentation\LibraryManagement.Presentation.csproj reference .\LibraryManagement.Infrastructure\LibraryManagement.Infrastructure\LibraryManagement.Infrastructure.csproj
