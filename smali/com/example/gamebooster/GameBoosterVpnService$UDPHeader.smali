.class Lcom/example/gamebooster/GameBoosterVpnService$UDPHeader;
.super Ljava/lang/Object;
.source "GameBoosterVpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/gamebooster/GameBoosterVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2a
    name = "UDPHeader"
.end annotation


# instance fields
.field checksum:S

.field destPort:S

.field length:S

.field sourcePort:S


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 98
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method
