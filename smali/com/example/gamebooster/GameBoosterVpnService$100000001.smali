.class Lcom/example/gamebooster/GameBoosterVpnService$100000001;
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
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Lcom/example/gamebooster/GameBoosterVpnService;


# direct methods
.method constructor <init>(Lcom/example/gamebooster/GameBoosterVpnService;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/gamebooster/GameBoosterVpnService$100000001;->this$0:Lcom/example/gamebooster/GameBoosterVpnService;

    return-void
.end method

.method static access$0(Lcom/example/gamebooster/GameBoosterVpnService$100000001;)Lcom/example/gamebooster/GameBoosterVpnService;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/GameBoosterVpnService$100000001;->this$0:Lcom/example/gamebooster/GameBoosterVpnService;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 271
    move-object/from16 v0, p0

    move-object v8, v0

    iget-object v8, v8, Lcom/example/gamebooster/GameBoosterVpnService$100000001;->this$0:Lcom/example/gamebooster/GameBoosterVpnService;

    invoke-static {v8}, Lcom/example/gamebooster/GameBoosterVpnService;->access$L1000008(Lcom/example/gamebooster/GameBoosterVpnService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v8

    .line 275
    :cond_0
    :goto_0
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 279
    move-object v8, v0

    iget-object v8, v8, Lcom/example/gamebooster/GameBoosterVpnService$100000001;->this$0:Lcom/example/gamebooster/GameBoosterVpnService;

    invoke-static {v8}, Lcom/example/gamebooster/GameBoosterVpnService;->access$L1000008(Lcom/example/gamebooster/GameBoosterVpnService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void

    .line 271
    :cond_1
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/example/gamebooster/GameBoosterVpnService$Packet;

    move-object v4, v8

    .line 272
    move-object v8, v0

    iget-object v8, v8, Lcom/example/gamebooster/GameBoosterVpnService$100000001;->this$0:Lcom/example/gamebooster/GameBoosterVpnService;

    invoke-static {v8}, Lcom/example/gamebooster/GameBoosterVpnService;->access$L1000009(Lcom/example/gamebooster/GameBoosterVpnService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    new-instance v9, Lcom/example/gamebooster/GameBoosterVpnService$ConnectionKey;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v4

    iget-short v11, v11, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->srcPort:S

    const v12, 0xffff

    and-int/2addr v11, v12

    move-object v12, v4

    iget-short v12, v12, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->dstPort:S

    const v13, 0xffff

    and-int/2addr v12, v13

    move-object v13, v4

    iget v13, v13, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->destIP:I

    invoke-direct {v10, v11, v12, v13}, Lcom/example/gamebooster/GameBoosterVpnService$ConnectionKey;-><init>(III)V

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/DatagramSocket;

    move-object v5, v8

    .line 273
    move-object v8, v5

    if-eqz v8, :cond_0

    .line 275
    move-object v8, v5

    :try_start_0
    new-instance v9, Ljava/net/DatagramPacket;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v4

    iget-object v11, v11, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->data:[B

    move-object v12, v4

    iget v12, v12, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->dataLen:I

    move-object v13, v0

    iget-object v13, v13, Lcom/example/gamebooster/GameBoosterVpnService$100000001;->this$0:Lcom/example/gamebooster/GameBoosterVpnService;

    move-object v14, v4

    iget v14, v14, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->destIP:I

    invoke-static {v13, v14}, Lcom/example/gamebooster/GameBoosterVpnService;->access$1000019(Lcom/example/gamebooster/GameBoosterVpnService;I)[B

    move-result-object v13

    invoke-static {v13}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v13

    move-object v14, v4

    iget-short v14, v14, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->dstPort:S

    const v15, 0xffff

    and-int/2addr v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v8, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    move-object v6, v8

    goto :goto_0
.end method
