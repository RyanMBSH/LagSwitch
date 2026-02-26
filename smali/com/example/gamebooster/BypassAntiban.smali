.class public Lcom/example/gamebooster/BypassAntiban;
.super Ljava/lang/Object;
.source "BypassAntiban.java"


# static fields
.field private static final random:Ljava/util/Random;


# direct methods
.method static final constructor <clinit>()V
    .locals 5

    new-instance v2, Ljava/util/Random;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    sput-object v2, Lcom/example/gamebooster/BypassAntiban;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 27
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyPacketJitter()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    :try_start_0
    sget-object v3, Lcom/example/gamebooster/BypassAntiban;->random:Ljava/util/Random;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const/16 v4, 0xf

    if-ge v3, v4, :cond_0

    .line 19
    const/4 v3, 0x0

    int-to-long v3, v3

    sget-object v5, Lcom/example/gamebooster/BypassAntiban;->random:Ljava/util/Random;

    const/16 v6, 0x1f4

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v3, v4, v5}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v3

    move-object v1, v3

    goto :goto_0
.end method

.method public static cleanMovementTraffic()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method public static getSafeIP()Ljava/lang/String;
    .locals 3

    .prologue
    .line 11
    const-string v2, "172.19.0.1"

    move-object v0, v2

    return-object v0
.end method

.method public static getSafeMTU()I
    .locals 3

    .prologue
    .line 12
    const/16 v2, 0x5dc

    move v0, v2

    return v0
.end method

.method public static getSessionName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 10
    const-string v2, "Android_Sys_Service"

    move-object v0, v2

    return-object v0
.end method
