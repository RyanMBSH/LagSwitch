.class public Lcom/example/gamebooster/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/gamebooster/MainActivity$100000000;,
        Lcom/example/gamebooster/MainActivity$100000001;,
        Lcom/example/gamebooster/MainActivity$100000002;,
        Lcom/example/gamebooster/MainActivity$100000003;
    }
.end annotation


# static fields
.field private static final REQUEST_OVERLAY:I = 0x3ea

.field private static final REQUEST_VPN:I = 0x3e9


# instance fields
.field private launchableApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPackage:Ljava/lang/String;

.field private vpnSwitch:Landroid/widget/Switch;

.field private waitingForPermission:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 282
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/example/gamebooster/MainActivity;->launchableApps:Ljava/util/List;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/example/gamebooster/MainActivity;->selectedPackage:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/example/gamebooster/MainActivity;->waitingForPermission:Z

    return-void
.end method

.method static synthetic access$1000008(Lcom/example/gamebooster/MainActivity;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/example/gamebooster/MainActivity;->checkVpnAndOverlay()V

    return-void
.end method

.method static synthetic access$1000010(Lcom/example/gamebooster/MainActivity;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/example/gamebooster/MainActivity;->stopAllServices()V

    return-void
.end method

.method static synthetic access$1000014(Lcom/example/gamebooster/MainActivity;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/example/gamebooster/MainActivity;->showAppSelector()V

    return-void
.end method

.method static synthetic access$1000017(Lcom/example/gamebooster/MainActivity;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/example/gamebooster/MainActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$L1000002(Lcom/example/gamebooster/MainActivity;)Landroid/widget/Switch;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/MainActivity;->vpnSwitch:Landroid/widget/Switch;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000003(Lcom/example/gamebooster/MainActivity;)Ljava/util/List;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/MainActivity;->launchableApps:Ljava/util/List;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000004(Lcom/example/gamebooster/MainActivity;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/MainActivity;->selectedPackage:Ljava/lang/String;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000005(Lcom/example/gamebooster/MainActivity;)Z
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/example/gamebooster/MainActivity;->waitingForPermission:Z

    move v0, v3

    return v0
.end method

.method static synthetic access$S1000002(Lcom/example/gamebooster/MainActivity;Landroid/widget/Switch;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/gamebooster/MainActivity;->vpnSwitch:Landroid/widget/Switch;

    return-void
.end method

.method static synthetic access$S1000003(Lcom/example/gamebooster/MainActivity;Ljava/util/List;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/gamebooster/MainActivity;->launchableApps:Ljava/util/List;

    return-void
.end method

.method static synthetic access$S1000004(Lcom/example/gamebooster/MainActivity;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/gamebooster/MainActivity;->selectedPackage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000005(Lcom/example/gamebooster/MainActivity;Z)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/example/gamebooster/MainActivity;->waitingForPermission:Z

    return-void
.end method

.method private checkVpnAndOverlay()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/example/gamebooster/MainActivity;->waitingForPermission:Z

    .line 92
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_0

    .line 93
    move-object v4, v0

    invoke-static {v4}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 94
    new-instance v4, Landroid/content/Intent;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 96
    move-object v4, v0

    move-object v5, v2

    const/16 v6, 0x3ea

    invoke-virtual {v4, v5, v6}, Lcom/example/gamebooster/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    move-object v4, v0

    invoke-static {v4}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    move-object v2, v4

    .line 103
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 104
    move-object v4, v0

    move-object v5, v2

    const/16 v6, 0x3e9

    invoke-virtual {v4, v5, v6}, Lcom/example/gamebooster/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 106
    :goto_1
    goto :goto_0

    :cond_1
    move-object v4, v0

    invoke-direct {v4}, Lcom/example/gamebooster/MainActivity;->startEngine()V

    goto :goto_1
.end method

.method private loadLaunchableApps()V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/example/gamebooster/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    move-object v2, v8

    .line 157
    move-object v8, v2

    const/16 v9, 0x80

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v8

    move-object v3, v8

    .line 160
    move-object v8, v0

    iget-object v8, v8, Lcom/example/gamebooster/MainActivity;->launchableApps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 162
    move-object v8, v3

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    .line 167
    :cond_0
    :goto_0
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 172
    move-object v8, v0

    iget-object v8, v8, Lcom/example/gamebooster/MainActivity;->launchableApps:Ljava/util/List;

    new-instance v9, Lcom/example/gamebooster/MainActivity$100000002;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Lcom/example/gamebooster/MainActivity$100000002;-><init>(Lcom/example/gamebooster/MainActivity;Landroid/content/pm/PackageManager;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    .line 162
    :cond_1
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    move-object v6, v8

    .line 164
    move-object v8, v2

    move-object v9, v6

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 166
    move-object v8, v6

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/example/gamebooster/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 167
    move-object v8, v0

    iget-object v8, v8, Lcom/example/gamebooster/MainActivity;->launchableApps:Ljava/util/List;

    move-object v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_0
.end method

.method private showAppSelector()V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 187
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/example/gamebooster/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object v2, v6

    .line 189
    move-object v6, v0

    iget-object v6, v6, Lcom/example/gamebooster/MainActivity;->launchableApps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v7, :cond_0

    .line 190
    move-object v6, v0

    const-string v7, "Kh\u00f4ng t\u00ecm th\u1ea5y \u1ee9ng d\u1ee5ng!"

    invoke-direct {v6, v7}, Lcom/example/gamebooster/MainActivity;->showToast(Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 194
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/example/gamebooster/MainActivity;->launchableApps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    move-object v3, v6

    .line 197
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/example/gamebooster/MainActivity;->launchableApps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 202
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v4, v6

    .line 205
    move-object v6, v4

    const-string v7, "DANH S\u00c1CH \u1ee8NG D\u1ee4NG"

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 207
    move-object v6, v4

    move-object v7, v3

    new-instance v8, Lcom/example/gamebooster/MainActivity$100000003;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move-object v11, v3

    invoke-direct {v9, v10, v11}, Lcom/example/gamebooster/MainActivity$100000003;-><init>(Lcom/example/gamebooster/MainActivity;[Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 219
    move-object v6, v4

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    goto :goto_0

    .line 198
    :cond_1
    move-object v6, v3

    move v7, v4

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lcom/example/gamebooster/MainActivity;->launchableApps:Ljava/util/List;

    move v10, v4

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    .line 197
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 281
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startEngine()V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/example/gamebooster/MainActivity;->waitingForPermission:Z

    .line 115
    new-instance v7, Landroid/content/Intent;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    :try_start_0
    const-string v10, "com.example.gamebooster.GameBoosterVpnService"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v2, v7

    .line 116
    move-object v7, v2

    const-string v8, "com.example.gamebooster.SET_APP"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 117
    move-object v7, v2

    const-string v8, "PACKAGE"

    move-object v9, v0

    iget-object v9, v9, Lcom/example/gamebooster/MainActivity;->selectedPackage:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 119
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_0

    .line 120
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/example/gamebooster/MainActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v7

    .line 126
    :goto_0
    new-instance v7, Landroid/content/Intent;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    :try_start_1
    const-string v10, "com.example.gamebooster.FloatingControlService"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v4, v7

    .line 127
    move-object v7, v4

    const-string v8, "PACKAGE"

    move-object v9, v0

    iget-object v9, v9, Lcom/example/gamebooster/MainActivity;->selectedPackage:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 129
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_1

    .line 130
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Lcom/example/gamebooster/MainActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v7

    .line 135
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Lcom/example/gamebooster/MainActivity;->vpnSwitch:Landroid/widget/Switch;

    const-string v8, "#00E676"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Switch;->setTextColor(I)V

    .line 136
    move-object v7, v0

    const-string v8, "Engine Ready! M\u1edf game \u0111\u1ec3 b\u1eaft \u0111\u1ea7u."

    invoke-direct {v7, v8}, Lcom/example/gamebooster/MainActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 115
    :catch_0
    move-exception v7

    move-object v3, v7

    new-instance v7, Ljava/lang/NoClassDefFoundError;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 122
    :cond_0
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/example/gamebooster/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v7

    goto :goto_0

    .line 126
    :catch_1
    move-exception v7

    move-object v5, v7

    new-instance v7, Ljava/lang/NoClassDefFoundError;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 132
    :cond_1
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Lcom/example/gamebooster/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v7

    goto :goto_1
.end method

.method private stopAllServices()V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/example/gamebooster/MainActivity;->waitingForPermission:Z

    .line 143
    new-instance v6, Landroid/content/Intent;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    :try_start_0
    const-string v9, "com.example.gamebooster.GameBoosterVpnService"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v2, v6

    .line 144
    move-object v6, v2

    const-string v7, "com.example.gamebooster.STOP"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 145
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/example/gamebooster/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v6

    .line 147
    move-object v6, v0

    new-instance v7, Landroid/content/Intent;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    :try_start_1
    const-string v10, "com.example.gamebooster.FloatingControlService"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Lcom/example/gamebooster/MainActivity;->stopService(Landroid/content/Intent;)Z

    move-result v6

    .line 149
    move-object v6, v0

    iget-object v6, v6, Lcom/example/gamebooster/MainActivity;->vpnSwitch:Landroid/widget/Switch;

    const/high16 v7, -0x10000

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setTextColor(I)V

    return-void

    .line 143
    :catch_0
    move-exception v6

    move-object v3, v6

    new-instance v6, Ljava/lang/NoClassDefFoundError;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 147
    :catch_1
    move-exception v6

    move-object v4, v6

    new-instance v6, Ljava/lang/NoClassDefFoundError;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private styleButton(Landroid/widget/Button;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Button;",
            ")V"
        }
    .end annotation

    .prologue
    .line 226
    move-object v0, p0

    move-object v1, p1

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v3, v5

    .line 227
    move-object v5, v3

    const-string v6, "#1A1A1A"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 228
    move-object v5, v3

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 229
    move-object v5, v3

    const/4 v6, 0x3

    const-string v7, "#00E676"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 231
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    .line 232
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 237
    :goto_0
    move-object v5, v1

    const-string v6, "#00E676"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 238
    move-object v5, v1

    const-string v6, "CH\u1eccN APP M\u1ee4C TI\u00caU"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 234
    :cond_0
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private styleSwitch(Landroid/widget/Switch;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Switch;",
            ")V"
        }
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const-string v4, "K\u00cdCH HO\u1ea0T ENGINE"

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 243
    move-object v3, v1

    const/high16 v4, -0x10000

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 255
    move v5, v1

    const/16 v6, 0x3e9

    if-ne v5, v6, :cond_2

    .line 257
    move v5, v2

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 258
    move-object v5, v0

    invoke-direct {v5}, Lcom/example/gamebooster/MainActivity;->startEngine()V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/example/gamebooster/MainActivity;->vpnSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 261
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/example/gamebooster/MainActivity;->waitingForPermission:Z

    .line 262
    move-object v5, v0

    const-string v6, "B\u1ea1n \u0111\u00e3 t\u1eeb ch\u1ed1i quy\u1ec1n VPN"

    invoke-direct {v5, v6}, Lcom/example/gamebooster/MainActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_2
    move v5, v1

    const/16 v6, 0x3ea

    if-ne v5, v6, :cond_0

    .line 267
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_3

    move-object v5, v0

    invoke-static {v5}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 270
    :cond_3
    move-object v5, v0

    invoke-direct {v5}, Lcom/example/gamebooster/MainActivity;->checkVpnAndOverlay()V

    goto :goto_0

    .line 273
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lcom/example/gamebooster/MainActivity;->vpnSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 274
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/example/gamebooster/MainActivity;->waitingForPermission:Z

    .line 275
    move-object v5, v0

    const-string v6, "C\u1ea7n c\u1ea5p quy\u1ec1n hi\u1ec3n th\u1ecb n\u1ed5i"

    invoke-direct {v5, v6}, Lcom/example/gamebooster/MainActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    const-string v6, "com.aide.ui"

    invoke-static {v5, v6}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    move-object v5, v0

    const/high16 v6, 0x7f030000

    invoke-virtual {v5, v6}, Lcom/example/gamebooster/MainActivity;->setContentView(I)V

    .line 42
    move-object v5, v0

    invoke-virtual {v5}, Lcom/example/gamebooster/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 43
    move-object v5, v0

    invoke-virtual {v5}, Lcom/example/gamebooster/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->hide()V

    .line 46
    :cond_0
    move-object v5, v0

    move-object v6, v0

    const/high16 v7, 0x7f060000

    invoke-virtual {v6, v7}, Lcom/example/gamebooster/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, v5, Lcom/example/gamebooster/MainActivity;->vpnSwitch:Landroid/widget/Switch;

    .line 47
    move-object v5, v0

    const v6, 0x7f060005

    invoke-virtual {v5, v6}, Lcom/example/gamebooster/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    move-object v3, v5

    .line 49
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/example/gamebooster/MainActivity;->vpnSwitch:Landroid/widget/Switch;

    invoke-direct {v5, v6}, Lcom/example/gamebooster/MainActivity;->styleSwitch(Landroid/widget/Switch;)V

    .line 50
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/example/gamebooster/MainActivity;->styleButton(Landroid/widget/Button;)V

    .line 52
    move-object v5, v0

    invoke-direct {v5}, Lcom/example/gamebooster/MainActivity;->loadLaunchableApps()V

    .line 54
    move-object v5, v0

    iget-object v5, v5, Lcom/example/gamebooster/MainActivity;->vpnSwitch:Landroid/widget/Switch;

    new-instance v6, Lcom/example/gamebooster/MainActivity$100000000;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/example/gamebooster/MainActivity$100000000;-><init>(Lcom/example/gamebooster/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    move-object v5, v3

    new-instance v6, Lcom/example/gamebooster/MainActivity$100000001;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/example/gamebooster/MainActivity$100000001;-><init>(Lcom/example/gamebooster/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
