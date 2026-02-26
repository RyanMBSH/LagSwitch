.class Lcom/example/gamebooster/FloatingControlService$100000003;
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
    name = "100000003"
.end annotation


# instance fields
.field private final this$0:Lcom/example/gamebooster/FloatingControlService;

.field private final val$ghostBtn:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/example/gamebooster/FloatingControlService;Landroid/widget/TextView;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/gamebooster/FloatingControlService$100000003;->this$0:Lcom/example/gamebooster/FloatingControlService;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/example/gamebooster/FloatingControlService$100000003;->val$ghostBtn:Landroid/widget/TextView;

    return-void
.end method

.method static access$0(Lcom/example/gamebooster/FloatingControlService$100000003;)Lcom/example/gamebooster/FloatingControlService;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/FloatingControlService$100000003;->this$0:Lcom/example/gamebooster/FloatingControlService;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
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
    .line 127
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/FloatingControlService$100000003;->this$0:Lcom/example/gamebooster/FloatingControlService;

    move-object v4, v0

    iget-object v4, v4, Lcom/example/gamebooster/FloatingControlService$100000003;->this$0:Lcom/example/gamebooster/FloatingControlService;

    invoke-static {v4}, Lcom/example/gamebooster/FloatingControlService;->access$L1000005(Lcom/example/gamebooster/FloatingControlService;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-static {v3, v4}, Lcom/example/gamebooster/FloatingControlService;->access$S1000005(Lcom/example/gamebooster/FloatingControlService;Z)V

    .line 128
    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/FloatingControlService$100000003;->this$0:Lcom/example/gamebooster/FloatingControlService;

    move-object v4, v0

    iget-object v4, v4, Lcom/example/gamebooster/FloatingControlService$100000003;->val$ghostBtn:Landroid/widget/TextView;

    move-object v5, v0

    iget-object v5, v5, Lcom/example/gamebooster/FloatingControlService$100000003;->this$0:Lcom/example/gamebooster/FloatingControlService;

    invoke-static {v5}, Lcom/example/gamebooster/FloatingControlService;->access$L1000005(Lcom/example/gamebooster/FloatingControlService;)Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/example/gamebooster/FloatingControlService;->access$1000015(Lcom/example/gamebooster/FloatingControlService;Landroid/widget/TextView;Z)V

    .line 129
    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/FloatingControlService$100000003;->this$0:Lcom/example/gamebooster/FloatingControlService;

    const-string v4, "com.example.gamebooster.GHOST"

    invoke-static {v3, v4}, Lcom/example/gamebooster/FloatingControlService;->access$1000017(Lcom/example/gamebooster/FloatingControlService;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method
