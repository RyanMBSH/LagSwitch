.class public Lcom/example/gamebooster/GameBoosterVpnService;
.super Landroid/net/VpnService;
.source "GameBoosterVpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/gamebooster/GameBoosterVpnService$BypassLogic;,
        Lcom/example/gamebooster/GameBoosterVpnService$ConnectionKey;,
        Lcom/example/gamebooster/GameBoosterVpnService$Packet;,
        Lcom/example/gamebooster/GameBoosterVpnService$100000000;,
        Lcom/example/gamebooster/GameBoosterVpnService$100000001;,
        Lcom/example/gamebooster/GameBoosterVpnService$100000002;
    }
.end annotation


# static fields
.field public static final ACTION_FREEZE:Ljava/lang/String; = "com.example.gamebooster.FREEZE"

.field public static final ACTION_GHOST:Ljava/lang/String; = "com.example.gamebooster.GHOST"

.field public static final ACTION_SET_APP:Ljava/lang/String; = "com.example.gamebooster.SET_APP"

.field public static final ACTION_STOP:Ljava/lang/String; = "com.example.gamebooster.STOP"

.field public static final ACTION_TELE:Ljava/lang/String; = "com.example.gamebooster.TELE"

.field private static final rnd:Ljava/util/Random;


# instance fields
.field private volatile isFreeze:Z

.field private volatile isGhost:Z

.field private volatile isRunning:Z

.field private volatile isTele:Z

.field private targetApp:Ljava/lang/String;

.field private final teleBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/example/gamebooster/GameBoosterVpnService$Packet;",
            ">;"
        }
    .end annotation
.end field

.field private threadPool:Ljava/util/concurrent/ExecutorService;

.field private final udpMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/example/gamebooster/GameBoosterVpnService$ConnectionKey;",
            "Ljava/net/DatagramSocket;",
            ">;"
        }
    .end annotation
.end field

.field private vpnInterface:Landroid/os/ParcelFileDescriptor;

.field private vpnThread:Ljava/lang/Thread;


# direct methods
.method static final constructor <clinit>()V
    .locals 5

    new-instance v2, Ljava/util/Random;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    sput-object v2, Lcom/example/gamebooster/GameBoosterVpnService;->rnd:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 298
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/net/VpnService;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/example/gamebooster/GameBoosterVpnService;->isRunning:Z

    move-object v2, v0

    const-string v3, ""

    iput-object v3, v2, Lcom/example/gamebooster/GameBoosterVpnService;->targetApp:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/example/gamebooster/GameBoosterVpnService;->isTele:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/example/gamebooster/GameBoosterVpnService;->isGhost:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/example/gamebooster/GameBoosterVpnService;->isFreeze:Z

    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, v2, Lcom/example/gamebooster/GameBoosterVpnService;->teleBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, v2, Lcom/example/gamebooster/GameBoosterVpnService;->udpMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$1000014(Lcom/example/gamebooster/GameBoosterVpnService;Ljava/net/DatagramPacket;III)[B
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/example/gamebooster/GameBoosterVpnService;->buildUdpResponse(Ljava/net/DatagramPacket;III)[B

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method static synthetic access$1000019(Lcom/example/gamebooster/GameBoosterVpnService;I)[B
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Lcom/example/gamebooster/GameBoosterVpnService;->toByte(I)[B

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method static synthetic access$L1000000()Ljava/util/Random;
    .locals 3

    sget-object v2, Lcom/example/gamebooster/GameBoosterVpnService;->rnd:Ljava/util/Random;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000003(Lcom/example/gamebooster/GameBoosterVpnService;)Z
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/example/gamebooster/GameBoosterVpnService;->isRunning:Z

    move v0, v3

    return v0
.end method

.method static synthetic access$L1000007(Lcom/example/gamebooster/GameBoosterVpnService;)Z
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/example/gamebooster/GameBoosterVpnService;->isFreeze:Z

    move v0, v3

    return v0
.end method

.method static synthetic access$L1000008(Lcom/example/gamebooster/GameBoosterVpnService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/GameBoosterVpnService;->teleBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000009(Lcom/example/gamebooster/GameBoosterVpnService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/GameBoosterVpnService;->udpMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000000(Ljava/util/Random;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/example/gamebooster/GameBoosterVpnService;->rnd:Ljava/util/Random;

    return-void
.end method

.method static synthetic access$S1000003(Lcom/example/gamebooster/GameBoosterVpnService;Z)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/example/gamebooster/GameBoosterVpnService;->isRunning:Z

    return-void
.end method

.method static synthetic access$S1000007(Lcom/example/gamebooster/GameBoosterVpnService;Z)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/example/gamebooster/GameBoosterVpnService;->isFreeze:Z

    return-void
.end method

.method static synthetic access$S1000008(Lcom/example/gamebooster/GameBoosterVpnService;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/gamebooster/GameBoosterVpnService;->teleBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method static synthetic access$S1000009(Lcom/example/gamebooster/GameBoosterVpnService;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/gamebooster/GameBoosterVpnService;->udpMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private buildUdpResponse(Ljava/net/DatagramPacket;III)[B
    .locals 16

    .prologue
    .line 240
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v11, v1

    invoke-virtual {v11}, Ljava/net/DatagramPacket;->getLength()I

    move-result v11

    move v6, v11

    .line 241
    const/16 v11, 0x1c

    move v12, v6

    add-int/2addr v11, v12

    move v7, v11

    .line 242
    move v11, v7

    new-array v11, v11, [B

    move-object v8, v11

    .line 243
    move-object v11, v8

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object v9, v11

    .line 244
    move-object v11, v9

    const/16 v12, 0x45

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object v11, v9

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 245
    move-object v11, v9

    move v12, v7

    int-to-short v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object v11, v9

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 246
    move-object v11, v9

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object v11, v9

    const/16 v12, 0x40

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 247
    move-object v11, v9

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object v11, v9

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 248
    move-object v11, v9

    move v12, v2

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object v11, v9

    const v12, 0xa000002

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 249
    move-object v11, v9

    const/16 v12, 0xa

    move-object v13, v9

    const/16 v14, 0x14

    invoke-static {v13, v14}, Lcom/example/gamebooster/GameBoosterVpnService;->checksum(Ljava/nio/ByteBuffer;I)S

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 250
    move-object v11, v9

    const/16 v12, 0x14

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v11

    .line 251
    move-object v11, v9

    move v12, v4

    int-to-short v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object v11, v9

    move v12, v3

    int-to-short v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 252
    move-object v11, v9

    const/16 v12, 0x8

    move v13, v6

    add-int/2addr v12, v13

    int-to-short v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object v11, v9

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 253
    move-object v11, v1

    invoke-virtual {v11}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v11

    const/4 v12, 0x0

    move-object v13, v8

    const/16 v14, 0x1c

    move v15, v6

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    move-object v11, v8

    move-object v0, v11

    return-object v0
.end method

.method private static checksum(Ljava/nio/ByteBuffer;I)S
    .locals 8

    .prologue
    .line 258
    move-object v0, p0

    move v1, p1

    const/4 v5, 0x0

    move v3, v5

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    .line 259
    :goto_0
    move v5, v1

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1

    .line 260
    move v5, v1

    const/4 v6, 0x0

    if-le v5, v6, :cond_0

    move v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x8

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    move v3, v5

    .line 261
    :cond_0
    move v5, v3

    const/16 v6, 0x10

    shr-int/lit8 v5, v5, 0x10

    move v6, v3

    const v7, 0xffff

    and-int/2addr v6, v7

    add-int/2addr v5, v6

    move v3, v5

    .line 262
    move v5, v3

    move v6, v3

    const/16 v7, 0x10

    shr-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    move v3, v5

    .line 263
    move v5, v3

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    int-to-short v5, v5

    move v0, v5

    return v0

    .line 259
    :cond_1
    move v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    const v7, 0xffff

    and-int/2addr v6, v7

    add-int/2addr v5, v6

    move v3, v5

    move v5, v1

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    move v1, v5

    goto :goto_0
.end method

.method private flushTelePackets()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 267
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/example/gamebooster/GameBoosterVpnService;->teleBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/example/gamebooster/GameBoosterVpnService;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/example/gamebooster/GameBoosterVpnService$100000001;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/example/gamebooster/GameBoosterVpnService$100000001;-><init>(Lcom/example/gamebooster/GameBoosterVpnService;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private processUdp(Lcom/example/gamebooster/GameBoosterVpnService$Packet;Ljava/io/FileOutputStream;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/gamebooster/GameBoosterVpnService$Packet;",
            "Ljava/io/FileOutputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 183
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v10, v1

    iget-short v10, v10, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->srcPort:S

    const v11, 0xffff

    and-int/2addr v10, v11

    move v4, v10

    .line 184
    move-object v10, v1

    iget-short v10, v10, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->dstPort:S

    const v11, 0xffff

    and-int/2addr v10, v11

    move v5, v10

    .line 185
    new-instance v10, Lcom/example/gamebooster/GameBoosterVpnService$ConnectionKey;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move v12, v4

    move v13, v5

    move-object v14, v1

    iget v14, v14, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->destIP:I

    invoke-direct {v11, v12, v13, v14}, Lcom/example/gamebooster/GameBoosterVpnService$ConnectionKey;-><init>(III)V

    move-object v6, v10

    .line 187
    move-object v10, v0

    iget-object v10, v10, Lcom/example/gamebooster/GameBoosterVpnService;->udpMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/DatagramSocket;

    move-object v7, v10

    .line 188
    move-object v10, v7

    if-nez v10, :cond_0

    .line 190
    :try_start_0
    new-instance v10, Ljava/net/DatagramSocket;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    invoke-direct {v11}, Ljava/net/DatagramSocket;-><init>()V

    move-object v8, v10

    .line 191
    move-object v10, v0

    move-object v11, v8

    invoke-virtual {v10, v11}, Lcom/example/gamebooster/GameBoosterVpnService;->protect(Ljava/net/DatagramSocket;)Z

    move-result v10

    .line 192
    move-object v10, v0

    iget-object v10, v10, Lcom/example/gamebooster/GameBoosterVpnService;->udpMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v11, v6

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 194
    move-object v10, v0

    iget-object v10, v10, Lcom/example/gamebooster/GameBoosterVpnService;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v11, Lcom/example/gamebooster/GameBoosterVpnService$100000000;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    move-object v13, v0

    move-object v14, v8

    move-object v15, v1

    move/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v18, v2

    invoke-direct/range {v12 .. v18}, Lcom/example/gamebooster/GameBoosterVpnService$100000000;-><init>(Lcom/example/gamebooster/GameBoosterVpnService;Ljava/net/DatagramSocket;Lcom/example/gamebooster/GameBoosterVpnService$Packet;IILjava/io/FileOutputStream;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    move-object v10, v8

    move-object v7, v10

    .line 219
    :cond_0
    move-object v10, v1

    invoke-virtual {v10}, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->isMovementPacket()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 220
    move-object v10, v0

    iget-boolean v10, v10, Lcom/example/gamebooster/GameBoosterVpnService;->isTele:Z

    if-eqz v10, :cond_1

    .line 221
    move-object v10, v0

    iget-object v10, v10, Lcom/example/gamebooster/GameBoosterVpnService;->teleBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 235
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v10

    move-object v8, v10

    .line 215
    goto :goto_0

    .line 224
    :cond_1
    move-object v10, v0

    iget-boolean v10, v10, Lcom/example/gamebooster/GameBoosterVpnService;->isGhost:Z

    if-eqz v10, :cond_2

    .line 225
    goto :goto_0

    .line 231
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/example/gamebooster/GameBoosterVpnService$BypassLogic;->applySafetyJitter()V

    .line 233
    new-instance v10, Ljava/net/DatagramPacket;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move-object v12, v1

    iget-object v12, v12, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->data:[B

    move-object v13, v1

    iget v13, v13, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->dataLen:I

    move-object v14, v0

    move-object v15, v1

    iget v15, v15, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->destIP:I

    invoke-direct {v14, v15}, Lcom/example/gamebooster/GameBoosterVpnService;->toByte(I)[B

    move-result-object v14

    invoke-static {v14}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v14

    move v15, v5

    invoke-direct {v11, v12, v13, v14, v15}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    move-object v8, v10

    .line 235
    move-object v10, v7

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    goto :goto_0

    :catch_1
    move-exception v10

    move-object v8, v10

    goto :goto_1
.end method

.method private setupNotification()V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_1

    .line 108
    new-instance v7, Landroid/app/NotificationChannel;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "gb"

    const-string v10, "Engine"

    const/4 v11, 0x2

    invoke-direct {v8, v9, v10, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v2, v7

    .line 109
    move-object v7, v0

    :try_start_0
    const-string v8, "android.app.NotificationManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/example/gamebooster/GameBoosterVpnService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    move-object v3, v7

    .line 110
    move-object v7, v3

    if-eqz v7, :cond_0

    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 111
    :cond_0
    new-instance v7, Landroid/app/Notification$Builder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    const-string v10, "gb"

    invoke-direct {v8, v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v8, "Engine: Maximum Performance"

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x1080024

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    move-object v5, v7

    .line 114
    move-object v7, v0

    const/4 v8, 0x1

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Lcom/example/gamebooster/GameBoosterVpnService;->startForeground(ILandroid/app/Notification;)V

    :cond_1
    return-void

    .line 109
    :catch_0
    move-exception v7

    move-object v4, v7

    new-instance v7, Ljava/lang/NoClassDefFoundError;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 296
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/os/Handler;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/example/gamebooster/GameBoosterVpnService$100000002;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/example/gamebooster/GameBoosterVpnService$100000002;-><init>(Lcom/example/gamebooster/GameBoosterVpnService;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    return-void
.end method

.method private stopVpnService()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 285
    move-object v0, p0

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/example/gamebooster/GameBoosterVpnService;->isRunning:Z

    .line 286
    move-object v6, v0

    iget-object v6, v6, Lcom/example/gamebooster/GameBoosterVpnService;->threadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/example/gamebooster/GameBoosterVpnService;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v6

    .line 288
    :cond_0
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/example/gamebooster/GameBoosterVpnService;->vpnInterface:Landroid/os/ParcelFileDescriptor;

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lcom/example/gamebooster/GameBoosterVpnService;->vpnInterface:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 289
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/example/gamebooster/GameBoosterVpnService;->udpMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 290
    move-object v6, v0

    iget-object v6, v6, Lcom/example/gamebooster/GameBoosterVpnService;->udpMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_1
    move-object v6, v0

    invoke-virtual {v6}, Lcom/example/gamebooster/GameBoosterVpnService;->stopSelf()V

    return-void

    .line 289
    :cond_2
    move-object v6, v2

    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/DatagramSocket;

    move-object v4, v6

    move-object v6, v4

    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 290
    :catch_0
    move-exception v6

    move-object v2, v6

    goto :goto_1
.end method

.method private toByte(I)[B
    .locals 9

    .prologue
    .line 295
    move-object v0, p0

    move v1, p1

    const/4 v3, 0x4

    new-array v3, v3, [B

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move v6, v1

    const/16 v7, 0x18

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    move v6, v1

    const/16 v7, 0x10

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x2

    move v6, v1

    const/16 v7, 0x8

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x3

    move v6, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 298
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    check-cast v3, Landroid/os/IBinder;

    move-object v0, v3

    return-object v0
.end method

.method public onCreate()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    const-string v3, "com.aide.ui"

    invoke-static {v2, v3}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    move-object v2, v0

    invoke-super {v2}, Landroid/app/Service;->onCreate()V

    .line 102
    move-object v2, v0

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, v2, Lcom/example/gamebooster/GameBoosterVpnService;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 103
    move-object v2, v0

    invoke-direct {v2}, Lcom/example/gamebooster/GameBoosterVpnService;->setupNotification()V

    return-void
.end method

.method public onDestroy()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lcom/example/gamebooster/GameBoosterVpnService;->stopVpnService()V

    move-object v2, v0

    invoke-super {v2}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 16
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 120
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v7, v1

    if-eqz v7, :cond_0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    const/4 v7, 0x1

    move v0, v7

    .line 142
    :goto_0
    return v0

    .line 121
    :cond_1
    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 123
    sget-object v7, Lcom/example/gamebooster/GameBoosterVpnService;->ACTION_SET_APP:Ljava/lang/String;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 124
    move-object v7, v0

    move-object v8, v1

    const-string v9, "PACKAGE"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/example/gamebooster/GameBoosterVpnService;->targetApp:Ljava/lang/String;

    .line 137
    :cond_2
    :goto_1
    move-object v7, v0

    iget-boolean v7, v7, Lcom/example/gamebooster/GameBoosterVpnService;->isRunning:Z

    if-nez v7, :cond_3

    .line 138
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/example/gamebooster/GameBoosterVpnService;->isRunning:Z

    .line 139
    move-object v7, v0

    new-instance v8, Ljava/lang/Thread;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v0

    const-string v11, "VPN-Run"

    invoke-direct {v9, v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v8, v7, Lcom/example/gamebooster/GameBoosterVpnService;->vpnThread:Ljava/lang/Thread;

    .line 140
    move-object v7, v0

    iget-object v7, v7, Lcom/example/gamebooster/GameBoosterVpnService;->vpnThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 142
    :cond_3
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 125
    :cond_4
    sget-object v7, Lcom/example/gamebooster/GameBoosterVpnService;->ACTION_STOP:Ljava/lang/String;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 126
    move-object v7, v0

    invoke-direct {v7}, Lcom/example/gamebooster/GameBoosterVpnService;->stopVpnService()V

    .line 127
    const/4 v7, 0x2

    move v0, v7

    goto :goto_0

    .line 128
    :cond_5
    sget-object v7, Lcom/example/gamebooster/GameBoosterVpnService;->ACTION_TELE:Ljava/lang/String;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 129
    move-object v7, v0

    move-object v8, v0

    iget-boolean v8, v8, Lcom/example/gamebooster/GameBoosterVpnService;->isTele:Z

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    :goto_2
    iput-boolean v8, v7, Lcom/example/gamebooster/GameBoosterVpnService;->isTele:Z

    .line 130
    move-object v7, v0

    iget-boolean v7, v7, Lcom/example/gamebooster/GameBoosterVpnService;->isTele:Z

    if-nez v7, :cond_6

    move-object v7, v0

    invoke-direct {v7}, Lcom/example/gamebooster/GameBoosterVpnService;->flushTelePackets()V

    :cond_6
    goto :goto_1

    .line 129
    :cond_7
    const/4 v8, 0x1

    goto :goto_2

    .line 131
    :cond_8
    sget-object v7, Lcom/example/gamebooster/GameBoosterVpnService;->ACTION_GHOST:Ljava/lang/String;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 132
    move-object v7, v0

    move-object v8, v0

    iget-boolean v8, v8, Lcom/example/gamebooster/GameBoosterVpnService;->isGhost:Z

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    :goto_3
    iput-boolean v8, v7, Lcom/example/gamebooster/GameBoosterVpnService;->isGhost:Z

    goto :goto_1

    :cond_9
    const/4 v8, 0x1

    goto :goto_3

    .line 133
    :cond_a
    sget-object v7, Lcom/example/gamebooster/GameBoosterVpnService;->ACTION_FREEZE:Ljava/lang/String;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 134
    move-object v7, v0

    move-object v8, v0

    iget-boolean v8, v8, Lcom/example/gamebooster/GameBoosterVpnService;->isFreeze:Z

    if-eqz v8, :cond_b

    const/4 v8, 0x0

    :goto_4
    iput-boolean v8, v7, Lcom/example/gamebooster/GameBoosterVpnService;->isFreeze:Z

    goto :goto_1

    :cond_b
    const/4 v8, 0x1

    goto :goto_4
.end method

.method public run()V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 148
    move-object/from16 v1, p0

    :try_start_0
    new-instance v15, Landroid/net/VpnService$Builder;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v17}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    move-object v7, v15

    .line 150
    move-object v15, v7

    invoke-static {}, Lcom/example/gamebooster/GameBoosterVpnService$BypassLogic;->getSecureSession()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v15

    const-string v16, "10.0.0.2"

    const/16 v17, 0x18

    invoke-virtual/range {v15 .. v17}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    move-result-object v15

    const-string v16, "0.0.0.0"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    move-result-object v15

    const/16 v16, 0x578

    invoke-virtual/range {v15 .. v16}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/net/VpnService$Builder;->setBlocking(Z)Landroid/net/VpnService$Builder;

    move-result-object v15

    .line 156
    move-object v15, v1

    iget-object v15, v15, Lcom/example/gamebooster/GameBoosterVpnService;->targetApp:Ljava/lang/String;

    if-eqz v15, :cond_0

    move-object v15, v1

    iget-object v15, v15, Lcom/example/gamebooster/GameBoosterVpnService;->targetApp:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-nez v15, :cond_0

    .line 157
    move-object v15, v7

    move-object/from16 v16, v1

    :try_start_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/example/gamebooster/GameBoosterVpnService;->targetApp:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/net/VpnService$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    .line 160
    :cond_0
    :goto_0
    move-object v15, v1

    move-object/from16 v16, v7

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/example/gamebooster/GameBoosterVpnService;->vpnInterface:Landroid/os/ParcelFileDescriptor;

    .line 161
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/example/gamebooster/GameBoosterVpnService;->vpnInterface:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v8, v15

    .line 162
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/example/gamebooster/GameBoosterVpnService;->vpnInterface:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v9, v15

    .line 164
    const/16 v15, 0x7fff

    new-array v15, v15, [B

    move-object v10, v15

    .line 165
    :cond_1
    :goto_1
    move-object v15, v1

    iget-boolean v15, v15, Lcom/example/gamebooster/GameBoosterVpnService;->isRunning:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v15, :cond_2

    .line 178
    :goto_2
    move-object v15, v1

    invoke-direct {v15}, Lcom/example/gamebooster/GameBoosterVpnService;->stopVpnService()V

    return-void

    .line 157
    :catch_0
    move-exception v15

    move-object v8, v15

    goto :goto_0

    .line 166
    :cond_2
    move-object v15, v8

    move-object/from16 v16, v10

    :try_start_3
    invoke-virtual/range {v15 .. v16}, Ljava/io/FileInputStream;->read([B)I

    move-result v15

    move v11, v15

    .line 167
    move v15, v11

    const/16 v16, 0x0

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    .line 168
    move-object v15, v10

    const/16 v16, 0x0

    move/from16 v17, v11

    invoke-static/range {v15 .. v17}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v15

    move-object v12, v15

    .line 169
    new-instance v15, Lcom/example/gamebooster/GameBoosterVpnService$Packet;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    move-object/from16 v17, v12

    invoke-direct/range {v16 .. v17}, Lcom/example/gamebooster/GameBoosterVpnService$Packet;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v13, v15

    .line 170
    move-object v15, v13

    iget v15, v15, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->protocol:I

    const/16 v16, 0x11

    move/from16 v0, v16

    goto :cond_0

    move-object v15, v13

    iget-object v15, v15, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->data:[B

    goto :cond_0

    .line 171
    move-object v15, v1

    move-object/from16 v16, v13

    move-object/from16 v17, v9

    invoke-direct/range {v15 .. v17}, Lcom/example/gamebooster/GameBoosterVpnService;->processUdp(Lcom/example/gamebooster/GameBoosterVpnService$Packet;Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 165
    :catch_1
    move-exception v15

    move-object v7, v15

    .line 176
    move-object v15, v7

    :try_start_4
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v15

    move-object v3, v15

    .line 178
    move-object v15, v1

    invoke-direct {v15}, Lcom/example/gamebooster/GameBoosterVpnService;->stopVpnService()V

    move-object v15, v3

    throw v15
.end method
