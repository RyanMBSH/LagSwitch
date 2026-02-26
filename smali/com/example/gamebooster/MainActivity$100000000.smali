.class Lcom/example/gamebooster/MainActivity$100000000;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/gamebooster/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/example/gamebooster/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/gamebooster/MainActivity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/gamebooster/MainActivity$100000000;->this$0:Lcom/example/gamebooster/MainActivity;

    return-void
.end method

.method static access$0(Lcom/example/gamebooster/MainActivity$100000000;)Lcom/example/gamebooster/MainActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/MainActivity$100000000;->this$0:Lcom/example/gamebooster/MainActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/CompoundButton;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/example/gamebooster/MainActivity$100000000;->this$0:Lcom/example/gamebooster/MainActivity;

    invoke-static {v4}, Lcom/example/gamebooster/MainActivity;->access$L1000005(Lcom/example/gamebooster/MainActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    :goto_0
    return-void

    .line 61
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/example/gamebooster/MainActivity$100000000;->this$0:Lcom/example/gamebooster/MainActivity;

    invoke-static {v4}, Lcom/example/gamebooster/MainActivity;->access$L1000004(Lcom/example/gamebooster/MainActivity;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 62
    move-object v4, v0

    iget-object v4, v4, Lcom/example/gamebooster/MainActivity$100000000;->this$0:Lcom/example/gamebooster/MainActivity;

    const-string v5, "Vui l\u00f2ng ch\u1ecdn Game c\u1ea7n Boost!"

    invoke-static {v4, v5}, Lcom/example/gamebooster/MainActivity;->access$1000017(Lcom/example/gamebooster/MainActivity;Ljava/lang/String;)V

    .line 63
    move-object v4, v0

    iget-object v4, v4, Lcom/example/gamebooster/MainActivity$100000000;->this$0:Lcom/example/gamebooster/MainActivity;

    invoke-static {v4}, Lcom/example/gamebooster/MainActivity;->access$L1000002(Lcom/example/gamebooster/MainActivity;)Landroid/widget/Switch;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 64
    goto :goto_0

    .line 67
    :cond_1
    move v4, v2

    if-eqz v4, :cond_2

    .line 68
    move-object v4, v0

    iget-object v4, v4, Lcom/example/gamebooster/MainActivity$100000000;->this$0:Lcom/example/gamebooster/MainActivity;

    invoke-static {v4}, Lcom/example/gamebooster/MainActivity;->access$1000008(Lcom/example/gamebooster/MainActivity;)V

    .line 71
    :goto_1
    goto :goto_0

    .line 70
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/example/gamebooster/MainActivity$100000000;->this$0:Lcom/example/gamebooster/MainActivity;

    invoke-static {v4}, Lcom/example/gamebooster/MainActivity;->access$1000010(Lcom/example/gamebooster/MainActivity;)V

    .line 71
    move-object v4, v0

    iget-object v4, v4, Lcom/example/gamebooster/MainActivity$100000000;->this$0:Lcom/example/gamebooster/MainActivity;

    const-string v5, "\u0110\u00e3 t\u1eaft Engine"

    invoke-static {v4, v5}, Lcom/example/gamebooster/MainActivity;->access$1000017(Lcom/example/gamebooster/MainActivity;Ljava/lang/String;)V

    goto :goto_1
.end method
