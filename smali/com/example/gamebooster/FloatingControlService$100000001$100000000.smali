.class Lcom/example/gamebooster/FloatingControlService$100000001$100000000;
.super Ljava/lang/Object;
.source "FloatingControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/gamebooster/FloatingControlService$100000001;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/example/gamebooster/FloatingControlService$100000001;

.field private final val$button:Landroid/widget/TextView;

.field private final val$params:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Lcom/example/gamebooster/FloatingControlService$100000001;Landroid/widget/TextView;Landroid/view/WindowManager$LayoutParams;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/example/gamebooster/FloatingControlService$100000001$100000000;->this$0:Lcom/example/gamebooster/FloatingControlService$100000001;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/example/gamebooster/FloatingControlService$100000001$100000000;->val$button:Landroid/widget/TextView;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/example/gamebooster/FloatingControlService$100000001$100000000;->val$params:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method static access$0(Lcom/example/gamebooster/FloatingControlService$100000001$100000000;)Lcom/example/gamebooster/FloatingControlService$100000001;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/FloatingControlService$100000001$100000000;->this$0:Lcom/example/gamebooster/FloatingControlService$100000001;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/example/gamebooster/FloatingControlService$100000001$100000000;->this$0:Lcom/example/gamebooster/FloatingControlService$100000001;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/example/gamebooster/FloatingControlService$100000001;->access$S1000015(Lcom/example/gamebooster/FloatingControlService$100000001;Z)V

    .line 101
    move-object v2, v0

    iget-object v2, v2, Lcom/example/gamebooster/FloatingControlService$100000001$100000000;->this$0:Lcom/example/gamebooster/FloatingControlService$100000001;

    invoke-static {v2}, Lcom/example/gamebooster/FloatingControlService$100000001;->access$0(Lcom/example/gamebooster/FloatingControlService$100000001;)Lcom/example/gamebooster/FloatingControlService;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/FloatingControlService$100000001$100000000;->val$button:Landroid/widget/TextView;

    move-object v4, v0

    iget-object v4, v4, Lcom/example/gamebooster/FloatingControlService$100000001$100000000;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v2, v3, v4}, Lcom/example/gamebooster/FloatingControlService;->access$1000020(Lcom/example/gamebooster/FloatingControlService;Landroid/widget/TextView;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
