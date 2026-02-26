.class Lcom/example/gamebooster/FloatingControlService$100000002;
.super Ljava/lang/Object;
.source "FloatingControlService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/gamebooster/FloatingControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lcom/example/gamebooster/FloatingControlService;


# direct methods
.method constructor <init>(Lcom/example/gamebooster/FloatingControlService;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/gamebooster/FloatingControlService$100000002;->this$0:Lcom/example/gamebooster/FloatingControlService;

    return-void
.end method

.method static access$0(Lcom/example/gamebooster/FloatingControlService$100000002;)Lcom/example/gamebooster/FloatingControlService;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/FloatingControlService$100000002;->this$0:Lcom/example/gamebooster/FloatingControlService;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/FloatingControlService$100000002;->this$0:Lcom/example/gamebooster/FloatingControlService;

    invoke-virtual {v3}, Lcom/example/gamebooster/FloatingControlService;->stopSelf()V

    return-void
.end method
