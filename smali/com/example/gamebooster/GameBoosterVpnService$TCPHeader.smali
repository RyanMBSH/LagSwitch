.class Lcom/example/gamebooster/GameBoosterVpnService$TCPHeader;
.super Ljava/lang/Object;
.source "GameBoosterVpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/gamebooster/GameBoosterVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2a
    name = "TCPHeader"
.end annotation


# instance fields
.field acknowledgement:I

.field checksum:S

.field dataOffset:B

.field destPort:S

.field flags:B

.field options:[B

.field sequence:I

.field sourcePort:S

.field urgentPointer:S

.field window:S


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/example/gamebooster/GameBoosterVpnService$TCPHeader;->options:[B

    return-void
.end method
