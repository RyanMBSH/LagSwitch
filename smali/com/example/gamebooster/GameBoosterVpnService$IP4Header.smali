.class Lcom/example/gamebooster/GameBoosterVpnService$IP4Header;
.super Ljava/lang/Object;
.source "GameBoosterVpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/gamebooster/GameBoosterVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2a
    name = "IP4Header"
.end annotation


# instance fields
.field checksum:S

.field destIP:I

.field flagsAndFragOffset:S

.field id:S

.field protocol:B

.field sourceIP:I

.field tos:B

.field totalLen:S

.field ttl:B

.field versionAndHeaderLen:B


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 91
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method
