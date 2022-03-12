using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace NWEEI_V2.Migrations
{
    public partial class FaxNOTrequired : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<int>(
                name: "Fax",
                table: "Registrations",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.UpdateData(
                table: "Articles",
                keyColumn: "ArticleID",
                keyValue: 1,
                column: "DateCreated",
                value: new DateTime(2022, 3, 11, 18, 27, 33, 498, DateTimeKind.Local).AddTicks(2664));
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<int>(
                name: "Fax",
                table: "Registrations",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.UpdateData(
                table: "Articles",
                keyColumn: "ArticleID",
                keyValue: 1,
                column: "DateCreated",
                value: new DateTime(2022, 3, 11, 18, 14, 35, 142, DateTimeKind.Local).AddTicks(3729));
        }
    }
}
