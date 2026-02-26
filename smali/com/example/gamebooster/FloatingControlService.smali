.class public Lcom/example/gamebooster/FloatingControlService;
.super Landroid/app/Service;
.source "FloatingControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/gamebooster/FloatingControlService$100000001;
    }
.end annotation


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "floating_control"


# instance fields
.field private buttonSizeDp:I

.field private freezeBtn:Landroid/widget/TextView;

.field private freezeOn:Z

.field private ghostBtn:Landroid/widget/TextView;

.field private ghostOn:Z

.field private teleBtn:Landroid/widget/TextView;

.field private teleOn:Z

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 276
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Service;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/example/gamebooster/FloatingControlService;->teleOn:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/example/gamebooster/FloatingControlService;->freezeOn:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/example/gamebooster/FloatingControlService;->ghostOn:Z

    move-object v2, v0

    const/16 v3, 0x46

    iput v3, v2, Lcom/example/gamebooster/FloatingControlService;->buttonSizeDp:I

    return-void
.end method

.method static synthetic access$1000020(Lcom/example/gamebooster/FloatingControlService;Landroid/widget/TextView;Landroid/view/WindowManager$LayoutParams;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/example/gamebooster/FloatingControlService;->toggleSize(Landroid/widget/TextView;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1000021(Lcom/example/gamebooster/FloatingControlService;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/example/gamebooster/FloatingControlService;->handleClick(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$L1000001(Lcom/example/gamebooster/FloatingControlService;)Landroid/view/WindowManager;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/FloatingControlService;->windowManager:Landroid/view/WindowManager;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000001(Lcom/example/gamebooster/FloatingControlService;Landroid/view/WindowManager;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/gamebooster/FloatingControlService;->windowManager:Landroid/view/WindowManager;

    return-void
.end method

.method private createCircleDrawable(I)Landroid/graphics/drawable/GradientDrawable;
    .locals 9

    .prologue
    .line 199
    move-object v0, p0

    move v1, p1

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v3, v5

    .line 200
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 201
    move-object v5, v3

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 202
    move-object v5, v3

    move-object v6, v0

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/example/gamebooster/FloatingControlService;->dpToPx(I)I

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 204
    move-object v5, v3

    move-object v0, v5

    return-object v0
.end method

.method private createFloatingButton(Ljava/lang/String;II)Landroid/widget/TextView;
    .locals 17

    .prologue
    .line 58
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v5, v8

    .line 59
    move-object v8, v5

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    move-object v8, v5

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    move-object v8, v5

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 62
    move-object v8, v5

    const/4 v9, 0x2

    const/16 v10, 0xc

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 64
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_0

    .line 65
    move-object v8, v5

    const/high16 v9, 0x41200000    # 10.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setElevation(F)V

    .line 68
    :cond_0
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Lcom/example/gamebooster/FloatingControlService;->buttonSizeDp:I

    invoke-direct {v10, v11}, Lcom/example/gamebooster/FloatingControlService;->dpToPx(I)I

    move-result v10

    move-object v11, v0

    move-object v12, v0

    iget v12, v12, Lcom/example/gamebooster/FloatingControlService;->buttonSizeDp:I

    invoke-direct {v11, v12}, Lcom/example/gamebooster/FloatingControlService;->dpToPx(I)I

    move-result v11

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1a

    if-lt v12, v13, :cond_1

    const/16 v12, 0x7f6

    :goto_0
    const/16 v13, 0x8

    const/4 v14, -0x3

    invoke-direct/range {v9 .. v14}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    move-object v6, v8

    .line 79
    move-object v8, v6

    const v9, 0x800033

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 80
    move-object v8, v6

    move v9, v2

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 81
    move-object v8, v6

    move v9, v3

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 83
    move-object v8, v5

    move-object v9, v0

    const v10, -0x2cd0d1

    invoke-direct {v9, v10}, Lcom/example/gamebooster/FloatingControlService;->createCircleDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    move-object v8, v0

    iget-object v8, v8, Lcom/example/gamebooster/FloatingControlService;->windowManager:Landroid/view/WindowManager;

    move-object v9, v5

    move-object v10, v6

    invoke-interface {v8, v9, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    move-object v8, v5

    new-instance v9, Lcom/example/gamebooster/FloatingControlService$100000001;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    move-object v12, v5

    move-object v13, v6

    move-object v14, v1

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/example/gamebooster/FloatingControlService$100000001;-><init>(Lcom/example/gamebooster/FloatingControlService;Landroid/widget/TextView;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 150
    move-object v8, v5

    move-object v0, v8

    return-object v0

    .line 68
    :cond_1
    const/16 v12, 0x7d2

    goto :goto_0
.end method

.method private dpToPx(I)I
    .locals 6

    .prologue
    .line 208
    move-object v0, p0

    move v1, p1

    const/4 v3, 0x1

    move v4, v1

    int-to-float v4, v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/example/gamebooster/FloatingControlService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    move v0, v3

    return v0
.end method

.method private handleClick(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    const-string v5, "TELE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Lcom/example/gamebooster/FloatingControlService;->teleOn:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, v4, Lcom/example/gamebooster/FloatingControlService;->teleOn:Z

    .line 171
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-boolean v6, v6, Lcom/example/gamebooster/FloatingControlService;->teleOn:Z

    invoke-direct {v4, v5, v6}, Lcom/example/gamebooster/FloatingControlService;->updateButtonState(Landroid/widget/TextView;Z)V

    .line 172
    move-object v4, v0

    const-string v5, "com.example.gamebooster.TELE"

    invoke-direct {v4, v5}, Lcom/example/gamebooster/FloatingControlService;->sendAction(Ljava/lang/String;)V

    .line 175
    :cond_0
    move-object v4, v2

    const-string v5, "FREEZE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Lcom/example/gamebooster/FloatingControlService;->freezeOn:Z

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, v4, Lcom/example/gamebooster/FloatingControlService;->freezeOn:Z

    .line 177
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-boolean v6, v6, Lcom/example/gamebooster/FloatingControlService;->freezeOn:Z

    invoke-direct {v4, v5, v6}, Lcom/example/gamebooster/FloatingControlService;->updateButtonState(Landroid/widget/TextView;Z)V

    .line 178
    move-object v4, v0

    const-string v5, "com.example.gamebooster.FREEZE"

    invoke-direct {v4, v5}, Lcom/example/gamebooster/FloatingControlService;->sendAction(Ljava/lang/String;)V

    .line 181
    :cond_1
    move-object v4, v2

    const-string v5, "GHOST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 182
    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Lcom/example/gamebooster/FloatingControlService;->ghostOn:Z

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, v4, Lcom/example/gamebooster/FloatingControlService;->ghostOn:Z

    .line 183
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-boolean v6, v6, Lcom/example/gamebooster/FloatingControlService;->ghostOn:Z

    invoke-direct {v4, v5, v6}, Lcom/example/gamebooster/FloatingControlService;->updateButtonState(Landroid/widget/TextView;Z)V

    .line 184
    move-object v4, v0

    const-string v5, "com.example.gamebooster.GHOST"

    invoke-direct {v4, v5}, Lcom/example/gamebooster/FloatingControlService;->sendAction(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 170
    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    .line 176
    :cond_4
    const/4 v5, 0x1

    goto :goto_1

    .line 182
    :cond_5
    const/4 v5, 0x1

    goto :goto_2
.end method

.method private sendAction(Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, p1

    new-instance v6, Landroid/content/Intent;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    :try_start_0
    const-string v9, "com.example.gamebooster.GameBoosterVpnService"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v3, v6

    .line 218
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 220
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_0

    .line 221
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/example/gamebooster/FloatingControlService;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v6

    .line 223
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v6

    move-object v4, v6

    new-instance v6, Ljava/lang/NoClassDefFoundError;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 223
    :cond_0
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/example/gamebooster/FloatingControlService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v6

    goto :goto_0
.end method

.method private startForegroundNotification()V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_1

    .line 231
    new-instance v6, Landroid/app/NotificationChannel;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "floating_control"

    const-string v9, "Floating Control"

    const/4 v10, 0x2

    invoke-direct {v7, v8, v9, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v2, v6

    .line 238
    move-object v6, v0

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Lcom/example/gamebooster/FloatingControlService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    move-object v3, v6

    .line 241
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 242
    move-object v6, v3

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 245
    :cond_0
    new-instance v6, Landroid/app/Notification$Builder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    const-string v9, "floating_control"

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v7, "Game Booster"

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const-string v7, "Floating control running"

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x1080024

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    move-object v4, v6

    .line 252
    move-object v6, v0

    const/4 v7, 0x1

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/example/gamebooster/FloatingControlService;->startForeground(ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method private toggleSize(Landroid/widget/TextView;Landroid/view/WindowManager$LayoutParams;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Landroid/view/WindowManager$LayoutParams;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget v4, v4, Lcom/example/gamebooster/FloatingControlService;->buttonSizeDp:I

    const/16 v5, 0x46

    if-ne v4, v5, :cond_0

    .line 156
    move-object v4, v0

    const/16 v5, 0x64

    iput v5, v4, Lcom/example/gamebooster/FloatingControlService;->buttonSizeDp:I

    .line 161
    :goto_0
    move-object v4, v2

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/example/gamebooster/FloatingControlService;->buttonSizeDp:I

    invoke-direct {v5, v6}, Lcom/example/gamebooster/FloatingControlService;->dpToPx(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 162
    move-object v4, v2

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/example/gamebooster/FloatingControlService;->buttonSizeDp:I

    invoke-direct {v5, v6}, Lcom/example/gamebooster/FloatingControlService;->dpToPx(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 164
    move-object v4, v0

    iget-object v4, v4, Lcom/example/gamebooster/FloatingControlService;->windowManager:Landroid/view/WindowManager;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 158
    :cond_0
    move-object v4, v0

    const/16 v5, 0x46

    iput v5, v4, Lcom/example/gamebooster/FloatingControlService;->buttonSizeDp:I

    goto :goto_0
.end method

.method private updateButtonState(Landroid/widget/TextView;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v2

    if-eqz v4, :cond_0

    .line 191
    move-object v4, v1

    move-object v5, v0

    const v6, -0xb350b0

    invoke-direct {v5, v6}, Lcom/example/gamebooster/FloatingControlService;->createCircleDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :goto_0
    return-void

    :cond_0
    move-object v4, v1

    move-object v5, v0

    const v6, -0x2cd0d1

    invoke-direct {v5, v6}, Lcom/example/gamebooster/FloatingControlService;->createCircleDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 275
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    check-cast v3, Landroid/os/IBinder;

    move-object v0, v3

    return-object v0
.end method

.method public onCreate()V
    .locals 5
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

    .line 38
    move-object v2, v0

    invoke-super {v2}, Landroid/app/Service;->onCreate()V

    .line 39
    move-object v2, v0

    invoke-direct {v2}, Lcom/example/gamebooster/FloatingControlService;->startForegroundNotification()V

    .line 40
    move-object v2, v0

    move-object v3, v0

    const-string v4, "window"

    invoke-virtual {v3, v4}, Lcom/example/gamebooster/FloatingControlService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, v2, Lcom/example/gamebooster/FloatingControlService;->windowManager:Landroid/view/WindowManager;

    return-void
.end method

.method public onDestroy()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 258
    move-object v0, p0

    move-object v4, v0

    invoke-super {v4}, Landroid/app/Service;->onDestroy()V

    .line 261
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/example/gamebooster/FloatingControlService;->teleBtn:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/example/gamebooster/FloatingControlService;->windowManager:Landroid/view/WindowManager;

    move-object v5, v0

    iget-object v5, v5, Lcom/example/gamebooster/FloatingControlService;->teleBtn:Landroid/widget/TextView;

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 262
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/example/gamebooster/FloatingControlService;->freezeBtn:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/example/gamebooster/FloatingControlService;->windowManager:Landroid/view/WindowManager;

    move-object v5, v0

    iget-object v5, v5, Lcom/example/gamebooster/FloatingControlService;->freezeBtn:Landroid/widget/TextView;

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 263
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/example/gamebooster/FloatingControlService;->ghostBtn:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/example/gamebooster/FloatingControlService;->windowManager:Landroid/view/WindowManager;

    move-object v5, v0

    iget-object v5, v5, Lcom/example/gamebooster/FloatingControlService;->ghostBtn:Landroid/widget/TextView;

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_2
    :goto_0
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/example/gamebooster/FloatingControlService;->stopForeground(Z)V

    .line 268
    move-object v4, v0

    const/4 v5, 0x0

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/example/gamebooster/FloatingControlService;->teleBtn:Landroid/widget/TextView;

    .line 269
    move-object v4, v0

    const/4 v5, 0x0

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/example/gamebooster/FloatingControlService;->freezeBtn:Landroid/widget/TextView;

    .line 270
    move-object v4, v0

    const/4 v5, 0x0

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/example/gamebooster/FloatingControlService;->ghostBtn:Landroid/widget/TextView;

    return-void

    .line 263
    :catch_0
    move-exception v4

    move-object v2, v4

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Lcom/example/gamebooster/FloatingControlService;->teleBtn:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move v0, v5

    .line 53
    :goto_0
    return v0

    .line 49
    :cond_0
    move-object v5, v0

    move-object v6, v0

    const-string v7, "TELE"

    const/16 v8, 0x64

    const/16 v9, 0x12c

    invoke-direct {v6, v7, v8, v9}, Lcom/example/gamebooster/FloatingControlService;->createFloatingButton(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    iput-object v6, v5, Lcom/example/gamebooster/FloatingControlService;->teleBtn:Landroid/widget/TextView;

    .line 50
    move-object v5, v0

    move-object v6, v0

    const-string v7, "FREEZE"

    const/16 v8, 0x64

    const/16 v9, 0x1f4

    invoke-direct {v6, v7, v8, v9}, Lcom/example/gamebooster/FloatingControlService;->createFloatingButton(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    iput-object v6, v5, Lcom/example/gamebooster/FloatingControlService;->freezeBtn:Landroid/widget/TextView;

    .line 51
    move-object v5, v0

    move-object v6, v0

    const-string v7, "GHOST"

    const/16 v8, 0x64

    const/16 v9, 0x2bc

    invoke-direct {v6, v7, v8, v9}, Lcom/example/gamebooster/FloatingControlService;->createFloatingButton(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    iput-object v6, v5, Lcom/example/gamebooster/FloatingControlService;->ghostBtn:Landroid/widget/TextView;

    .line 53
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method
