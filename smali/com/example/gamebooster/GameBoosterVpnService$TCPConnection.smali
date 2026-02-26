.class Lcom/example/gamebooster/GameBoosterVpnService$TCPConnection;
.super Ljava/lang/Object;
.source "GameBoosterVpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/gamebooster/GameBoosterVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2a
    name = "TCPConnection"
.end annotation


# instance fields
.field ip4Header:Lcom/example/gamebooster/GameBoosterVpnService$IP4Header;

.field myAcknowledgementNumber:J

.field mySequenceNumber:J

.field receiveThread:Ljava/lang/Thread;

.field socket:Ljava/net/Socket;

.field tcpHeader:Lcom/example/gamebooster/GameBoosterVpnService$TCPHeader;

.field theirAcknowledgementNumber:J

.field theirSequenceNumber:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 192
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method
