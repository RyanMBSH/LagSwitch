.class Lcom/example/gamebooster/GameBoosterVpnService$Packet;
.super Ljava/lang/Object;
.source "GameBoosterVpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/gamebooster/GameBoosterVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2a
    name = "Packet"
.end annotation


# instance fields
.field data:[B

.field dataLen:I

.field destIP:I

.field dstPort:S

.field protocol:I

.field srcPort:S


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 8

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 76
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    .line 77
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    const/16 v6, 0xf

    and-int/lit8 v5, v5, 0xf

    const/4 v6, 0x4

    mul-int/lit8 v5, v5, 0x4

    move v3, v5

    .line 78
    move-object v5, v0

    move-object v6, v1

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    iput v6, v5, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->protocol:I

    .line 79
    move-object v5, v0

    move-object v6, v1

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->destIP:I

    .line 80
    move-object v5, v0

    iget v5, v5, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->protocol:I

    const/16 v6, 0x11

    if-ne v5, v6, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    move v6, v3

    const/16 v7, 0x8

    add-int/lit8 v6, v6, 0x8

    if-lt v5, v6, :cond_0

    .line 81
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    .line 82
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    iput-short v6, v5, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->srcPort:S

    .line 83
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    iput-short v6, v5, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->dstPort:S

    .line 84
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    const v7, 0xffff

    and-int/2addr v6, v7

    move v7, v3

    sub-int/2addr v6, v7

    const/16 v7, 0x8

    add-int/lit8 v6, v6, -0x8

    iput v6, v5, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->dataLen:I

    .line 85
    move-object v5, v0

    iget v5, v5, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->dataLen:I

    const/4 v6, 0x0

    if-le v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->dataLen:I

    const/16 v6, 0x5dc

    if-ge v5, v6, :cond_0

    .line 86
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->dataLen:I

    new-array v6, v6, [B

    iput-object v6, v5, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->data:[B

    .line 87
    move-object v5, v1

    move v6, v3

    const/16 v7, 0x8

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    .line 88
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->data:[B

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    :cond_0
    return-void
.end method


# virtual methods
.method isMovementPacket()Z
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->dataLen:I

    const/16 v3, 0x37

    if-lt v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/example/gamebooster/GameBoosterVpnService$Packet;->dataLen:I

    const/16 v3, 0xa0

    if-le v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
