.class Lcom/example/gamebooster/GameBoosterVpnService$100000002;
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
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lcom/example/gamebooster/GameBoosterVpnService;

.field private final val$m:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/example/gamebooster/GameBoosterVpnService;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/gamebooster/GameBoosterVpnService$100000002;->this$0:Lcom/example/gamebooster/GameBoosterVpnService;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/example/gamebooster/GameBoosterVpnService$100000002;->val$m:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/example/gamebooster/GameBoosterVpnService$100000002;)Lcom/example/gamebooster/GameBoosterVpnService;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/GameBoosterVpnService$100000002;->this$0:Lcom/example/gamebooster/GameBoosterVpnService;

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
    .line 296
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/example/gamebooster/GameBoosterVpnService$100000002;->this$0:Lcom/example/gamebooster/GameBoosterVpnService;

    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/GameBoosterVpnService$100000002;->val$m:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void
.end method
