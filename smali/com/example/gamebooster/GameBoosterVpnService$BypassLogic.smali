.class Lcom/example/gamebooster/GameBoosterVpnService$BypassLogic;
.super Ljava/lang/Object;
.source "GameBoosterVpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/gamebooster/GameBoosterVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2a
    name = "BypassLogic"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applySafetyJitter()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Lcom/example/gamebooster/GameBoosterVpnService;->access$L1000000()Ljava/util/Random;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 36
    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_0
    return-void
.end method

.method static getSecureSession()Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    const-string v2, "Google_Services_Framework_Proxy"

    move-object v0, v2

    return-object v0
.end method
