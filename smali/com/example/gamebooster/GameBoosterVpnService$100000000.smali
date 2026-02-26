.class Lcom/example/gamebooster/GameBoosterVpnService$100000000;
.super Ljava/lang/Object;
.source "GameBoosterVpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/gamebooster/GameBoosterVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/example/gamebooster/GameBoosterVpnService;

.field private final val$dPort:I

.field private final val$out:Ljava/io/FileOutputStream;

.field private final val$packet:Lcom/example/gamebooster/GameBoosterVpnService$Packet;

.field private final val$s:Ljava/net/DatagramSocket;

.field private final val$sPort:I


# direct methods
.method constructor <init>(Lcom/example/gamebooster/GameBoosterVpnService;Ljava/net/DatagramSocket;Lcom/example/gamebooster/GameBoosterVpnService$Packet;IILjava/io/FileOutputStream;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/example/gamebooster/GameBoosterVpnService$100000000;->this$0:Lcom/example/gamebooster/GameBoosterVpnService;

    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lcom/example/gamebooster/GameBoosterVpnService$100000000;->val$s:Ljava/net/DatagramSocket;

    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Lcom/example/gamebooster/GameBoosterVpnService$100000000;->val$packet:Lcom/example/gamebooster/GameBoosterVpnService$Packet;

    move-object v8, v0

    move v9, v4

    iput v9, v8, Lcom/example/gamebooster/GameBoosterVpnService$100000000;->val$sPort:I

    move-object v8, v0

    move v9, v5

    iput v9, v8, Lcom/example/gamebooster/GameBoosterVpnService$100000000;->val$dPort:I

    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Lcom/example/gamebooster/GameBoosterVpnService$100000000;->val$out:Ljava/io/FileOutputStream;

    return-void
.end method

.method static access$0(Lcom/example/gamebooster/GameBoosterVpnService$100000000;)Lcom/example/gamebooster/GameBoosterVpnService;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/GameBoosterVpnService$100000000;->this$0:Lcom/example/gamebooster/GameBoosterVpnService;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    const/16 v8, 0x1000

    new-array v8, v8, [B

    move-object v2, v8

    .line 199
    :goto_0
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lcom/example/gamebooster/GameBoosterVpnService$100000000;->this$0:Lcom/example/gamebooster/GameBoosterVpnService;

    invoke-static {v8}, Lcom/example/gamebooster/GameBoosterVpnService;->access$L1000003(Lcom/example/gamebooster/GameBoosterVpnService;)Z

    move-result v8

    if-nez v8, :cond_0

    :goto_1
    return-void

    .line 200
    :cond_0
    new-instance v8, Ljava/net/DatagramPacket;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v2

    move-object v11, v2

    array-length v11, v11

    invoke-direct {v9, v10, v11}, Ljava/net/DatagramPacket;-><init>([BI)V

    move-object v3, v8

    .line 201
    move-object v8, v0

    iget-object v8, v8, Lcom/example/gamebooster/GameBoosterVpnService$100000000;->val$s:Ljava/net/DatagramSocket;

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 204
    move-object v8, v0

    iget-object v8, v8, Lcom/example/gamebooster/GameBoosterVpnService$100000000;->this$0:Lcom/example/gamebooster/GameBoosterVpnService;

    invoke-static {v8}, Lcom/example/gamebooster/GameBoosterVpnService;->access$L1000007(Lcom/example/gamebooster/GameBoosterVpnService;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v3

    invoke-virtual {v8}, Ljava/net/DatagramPacket;->getLength()I

    move-result v8

    const/16 v9, 0x14

    if-lt v8, v9, :cond_1

    move-object v8, v3

    invoke-virtual {v8}, Ljava/net/DatagramPacket;->getLength()I

    move-result v8

    const/16 v9, 0x1c2

    if-gt v8, v9, :cond_1

    .line 205
    goto :goto_0

    .line 208
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/example/gamebooster/GameBoosterVpnService$100000000;->this$0:Lcom/example/gamebooster/GameBoosterVpnService;

    move-object v9, v3

    move-object v10, v0

    iget-object v10, v10, Lcom/example/gamebooster/GameBoosterVpnService$100000000;->val$packet:Lcom/example/gamebooster/GameBoosterVpnService$Packet;

    iget v10, v10, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->destIP:I

    move-object v11, v0

    iget v11, v11, Lcom/example/gamebooster/GameBoosterVpnService$100000000;->val$sPort:I

    move-object v12, v0

    iget v12, v12, Lcom/example/gamebooster/GameBoosterVpnService$100000000;->val$dPort:I

    invoke-static {v8, v9, v10, v11, v12}, Lcom/example/gamebooster/GameBoosterVpnService;->access$1000014(Lcom/example/gamebooster/GameBoosterVpnService;Ljava/net/DatagramPacket;III)[B

    move-result-object v8

    move-object v4, v8

    .line 209
    move-object v8, v0

    iget-object v8, v8, Lcom/example/gamebooster/GameBoosterVpnService$100000000;->val$out:Ljava/io/FileOutputStream;

    move-object v5, v8

    move-object v8, v5

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v0

    :try_start_1
    iget-object v8, v8, Lcom/example/gamebooster/GameBoosterVpnService$100000000;->val$out:Ljava/io/FileOutputStream;

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v5

    :try_start_2
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v8

    move-object v6, v8

    move-object v8, v5

    monitor-exit v8

    move-object v8, v6

    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 199
    :catch_0
    move-exception v8

    move-object v3, v8

    goto :goto_1
.end method
