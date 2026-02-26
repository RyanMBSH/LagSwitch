.class Lcom/example/gamebooster/GameBoosterVpnService$ConnectionKey;
.super Ljava/lang/Object;
.source "GameBoosterVpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/gamebooster/GameBoosterVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2a
    name = "ConnectionKey"
.end annotation


# instance fields
.field destIP:I

.field destPort:I

.field sourcePort:I


# direct methods
.method constructor <init>(III)V
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/example/gamebooster/GameBoosterVpnService$ConnectionKey;->sourcePort:I

    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/example/gamebooster/GameBoosterVpnService$ConnectionKey;->destPort:I

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/example/gamebooster/GameBoosterVpnService$ConnectionKey;->destIP:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    instance-of v5, v5, Lcom/example/gamebooster/GameBoosterVpnService$ConnectionKey;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 67
    :goto_0
    return v0

    .line 66
    :cond_0
    move-object v5, v1

    check-cast v5, Lcom/example/gamebooster/GameBoosterVpnService$ConnectionKey;

    move-object v3, v5

    .line 67
    move-object v5, v0

    iget v5, v5, Lcom/example/gamebooster/GameBoosterVpnService$ConnectionKey;->sourcePort:I

    move-object v6, v3

    iget v6, v6, Lcom/example/gamebooster/GameBoosterVpnService$ConnectionKey;->sourcePort:I

    if-ne v5, v6, :cond_1

    move-object v5, v0

    iget v5, v5, Lcom/example/gamebooster/GameBoosterVpnService$ConnectionKey;->destPort:I

    move-object v6, v3

    iget v6, v6, Lcom/example/gamebooster/GameBoosterVpnService$ConnectionKey;->destPort:I

    if-ne v5, v6, :cond_1

    move-object v5, v0

    iget v5, v5, Lcom/example/gamebooster/GameBoosterVpnService$ConnectionKey;->destIP:I

    move-object v6, v3

    iget v6, v6, Lcom/example/gamebooster/GameBoosterVpnService$ConnectionKey;->destIP:I

    if-eq v5, v6, :cond_2

    :cond_1
    const/4 v5, 0x0

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/example/gamebooster/GameBoosterVpnService$ConnectionKey;->sourcePort:I

    move-object v3, v0

    iget v3, v3, Lcom/example/gamebooster/GameBoosterVpnService$ConnectionKey;->destPort:I

    xor-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/example/gamebooster/GameBoosterVpnService$ConnectionKey;->destIP:I

    xor-int/2addr v2, v3

    move v0, v2

    return v0
.end method
