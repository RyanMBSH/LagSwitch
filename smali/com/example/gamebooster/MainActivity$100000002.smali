.class Lcom/example/gamebooster/MainActivity$100000002;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/gamebooster/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final this$0:Lcom/example/gamebooster/MainActivity;

.field private final val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/example/gamebooster/MainActivity;Landroid/content/pm/PackageManager;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/gamebooster/MainActivity$100000002;->this$0:Lcom/example/gamebooster/MainActivity;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/example/gamebooster/MainActivity$100000002;->val$pm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static access$0(Lcom/example/gamebooster/MainActivity$100000002;)Lcom/example/gamebooster/MainActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/MainActivity$100000002;->this$0:Lcom/example/gamebooster/MainActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I
    .locals 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    iget-object v7, v7, Lcom/example/gamebooster/MainActivity$100000002;->val$pm:Landroid/content/pm/PackageManager;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 178
    move-object v7, v0

    iget-object v7, v7, Lcom/example/gamebooster/MainActivity$100000002;->val$pm:Landroid/content/pm/PackageManager;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 180
    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    move v0, v7

    return v0
.end method

.method public bridge compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    move-object v6, v2

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5, v6}, Lcom/example/gamebooster/MainActivity$100000002;->compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I

    move-result v4

    move v0, v4

    return v0
.end method
