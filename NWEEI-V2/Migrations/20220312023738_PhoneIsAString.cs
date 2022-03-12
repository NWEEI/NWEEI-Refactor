using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace NWEEI_V2.Migrations
{
    public partial class PhoneIsAString : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "Phone",
                table: "Registrations",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.UpdateData(
                table: "Articles",
                keyColumn: "ArticleID",
                keyValue: 1,
                column: "DateCreated",
                value: new DateTime(2022, 3, 11, 18, 37, 38, 82, DateTimeKind.Local).AddTicks(5815));
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<int>(
                name: "Phone",
                table: "Registrations",
                type: "int",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.UpdateData(
                table: "Articles",
                keyColumn: "ArticleID",
                keyValue: 1,
                column: "DateCreated",
                value: new DateTime(2022, 3, 11, 18, 27, 33, 498, DateTimeKind.Local).AddTicks(2664));
        }
    }
}
