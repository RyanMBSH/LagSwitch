.class Lcom/example/gamebooster/GameBoosterVpnService$UdpKey;
.super Ljava/lang/Object;
.source "GameBoosterVpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/gamebooster/GameBoosterVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2a
    name = "UdpKey"
.end annotation


# instance fields
.field destIP:I

.field destPort:I

.field sourcePort:I


# direct methods
.method public constructor <init>(III)V
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/example/gamebooster/GameBoosterVpnService$UdpKey;->sourcePort:I

    .line 58
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/example/gamebooster/GameBoosterVpnService$UdpKey;->destPort:I

    .line 59
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/example/gamebooster/GameBoosterVpnService$UdpKey;->destIP:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    instance-of v5, v5, Lcom/example/gamebooster/GameBoosterVpnService$UdpKey;

    if-eqz v5, :cond_2

    .line 68
    move-object v5, v1

    check-cast v5, Lcom/example/gamebooster/GameBoosterVpnService$UdpKey;

    move-object v3, v5

    .line 69
    move-object v5, v0

    iget v5, v5, Lcom/example/gamebooster/GameBoosterVpnService$UdpKey;->sourcePort:I

    move-object v6, v3

    iget v6, v6, Lcom/example/gamebooster/GameBoosterVpnService$UdpKey;->sourcePort:I

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/example/gamebooster/GameBoosterVpnService$UdpKey;->destPort:I

    move-object v6, v3

    iget v6, v6, Lcom/example/gamebooster/GameBoosterVpnService$UdpKey;->destPort:I

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/example/gamebooster/GameBoosterVpnService$UdpKey;->destIP:I

    move-object v6, v3

    iget v6, v6, Lcom/example/gamebooster/GameBoosterVpnService$UdpKey;->destIP:I

    if-eq v5, v6, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move v0, v5

    .line 73
    :goto_1
    return v0

    .line 69
    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    .line 73
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/example/gamebooster/GameBoosterVpnService$UdpKey;->sourcePort:I

    move-object v3, v0

    iget v3, v3, Lcom/example/gamebooster/GameBoosterVpnService$UdpKey;->destPort:I

    xor-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/example/gamebooster/GameBoosterVpnService$UdpKey;->destIP:I

    xor-int/2addr v2, v3

    move v0, v2

    return v0
.end method
