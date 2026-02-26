.class Lcom/example/gamebooster/MainActivity$100000003;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/gamebooster/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000003"
.end annotation


# instance fields
.field private final this$0:Lcom/example/gamebooster/MainActivity;

.field private final val$names:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/example/gamebooster/MainActivity;[Ljava/lang/CharSequence;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/gamebooster/MainActivity$100000003;->this$0:Lcom/example/gamebooster/MainActivity;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/example/gamebooster/MainActivity$100000003;->val$names:[Ljava/lang/CharSequence;

    return-void
.end method

.method static access$0(Lcom/example/gamebooster/MainActivity$100000003;)Lcom/example/gamebooster/MainActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/MainActivity$100000003;->this$0:Lcom/example/gamebooster/MainActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/example/gamebooster/MainActivity$100000003;->this$0:Lcom/example/gamebooster/MainActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/example/gamebooster/MainActivity$100000003;->this$0:Lcom/example/gamebooster/MainActivity;

    invoke-static {v5}, Lcom/example/gamebooster/MainActivity;->access$L1000003(Lcom/example/gamebooster/MainActivity;)Ljava/util/List;

    move-result-object v5

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/example/gamebooster/MainActivity;->access$S1000004(Lcom/example/gamebooster/MainActivity;Ljava/lang/String;)V

    .line 215
    move-object v4, v0

    iget-object v4, v4, Lcom/example/gamebooster/MainActivity$100000003;->this$0:Lcom/example/gamebooster/MainActivity;

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "\u0110\u00e3 ch\u1ecdn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/example/gamebooster/MainActivity$100000003;->val$names:[Ljava/lang/CharSequence;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/example/gamebooster/MainActivity;->access$1000017(Lcom/example/gamebooster/MainActivity;Ljava/lang/String;)V

    return-void
.end method
