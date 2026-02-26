.class Lcom/example/gamebooster/FloatingControlService$100000001;
.super Ljava/lang/Object;
.source "FloatingControlService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/gamebooster/FloatingControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/gamebooster/FloatingControlService$100000001$100000000;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field private isMoving:Z

.field private longPress:Ljava/lang/Runnable;

.field private longPressed:Z

.field private final this$0:Lcom/example/gamebooster/FloatingControlService;

.field private final val$button:Landroid/widget/TextView;

.field private final val$params:Landroid/view/WindowManager$LayoutParams;

.field private final val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/example/gamebooster/FloatingControlService;Landroid/widget/TextView;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/example/gamebooster/FloatingControlService$100000001;->this$0:Lcom/example/gamebooster/FloatingControlService;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/example/gamebooster/FloatingControlService$100000001;->val$button:Landroid/widget/TextView;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/example/gamebooster/FloatingControlService$100000001;->val$params:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/example/gamebooster/FloatingControlService$100000001;->val$type:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/example/gamebooster/FloatingControlService$100000001;->isMoving:Z

    move-object v6, v0

    new-instance v7, Landroid/os/Handler;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v7, v6, Lcom/example/gamebooster/FloatingControlService$100000001;->handler:Landroid/os/Handler;

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/example/gamebooster/FloatingControlService$100000001;->longPressed:Z

    move-object v6, v0

    new-instance v7, Lcom/example/gamebooster/FloatingControlService$100000001$100000000;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/example/gamebooster/FloatingControlService$100000001;->val$button:Landroid/widget/TextView;

    move-object v11, v0

    iget-object v11, v11, Lcom/example/gamebooster/FloatingControlService$100000001;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v8, v9, v10, v11}, Lcom/example/gamebooster/FloatingControlService$100000001$100000000;-><init>(Lcom/example/gamebooster/FloatingControlService$100000001;Landroid/widget/TextView;Landroid/view/WindowManager$LayoutParams;)V

    iput-object v7, v6, Lcom/example/gamebooster/FloatingControlService$100000001;->longPress:Ljava/lang/Runnable;

    return-void
.end method

.method static access$0(Lcom/example/gamebooster/FloatingControlService$100000001;)Lcom/example/gamebooster/FloatingControlService;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/gamebooster/FloatingControlService$100000001;->this$0:Lcom/example/gamebooster/FloatingControlService;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000015(Lcom/example/gamebooster/FloatingControlService$100000001;)Z
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/example/gamebooster/FloatingControlService$100000001;->longPressed:Z

    move v0, v3

    return v0
.end method

.method static synthetic access$S1000015(Lcom/example/gamebooster/FloatingControlService$100000001;Z)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/example/gamebooster/FloatingControlService$100000001;->longPressed:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 146
    const/4 v7, 0x0

    move v0, v7

    :goto_0
    return v0

    .line 111
    :pswitch_0
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/example/gamebooster/FloatingControlService$100000001;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v8, v7, Lcom/example/gamebooster/FloatingControlService$100000001;->initialX:I

    .line 112
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/example/gamebooster/FloatingControlService$100000001;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v8, v7, Lcom/example/gamebooster/FloatingControlService$100000001;->initialY:I

    .line 113
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iput v8, v7, Lcom/example/gamebooster/FloatingControlService$100000001;->initialTouchX:F

    .line 114
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, v7, Lcom/example/gamebooster/FloatingControlService$100000001;->initialTouchY:F

    .line 115
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/example/gamebooster/FloatingControlService$100000001;->isMoving:Z

    .line 116
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/example/gamebooster/FloatingControlService$100000001;->longPressed:Z

    .line 117
    move-object v7, v0

    iget-object v7, v7, Lcom/example/gamebooster/FloatingControlService$100000001;->handler:Landroid/os/Handler;

    move-object v8, v0

    iget-object v8, v8, Lcom/example/gamebooster/FloatingControlService$100000001;->longPress:Ljava/lang/Runnable;

    const/16 v9, 0x320

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v7

    .line 118
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 122
    :pswitch_1
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    move-object v8, v0

    iget v8, v8, Lcom/example/gamebooster/FloatingControlService$100000001;->initialTouchX:F

    sub-float/2addr v7, v8

    float-to-int v7, v7

    move v4, v7

    .line 123
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    move-object v8, v0

    iget v8, v8, Lcom/example/gamebooster/FloatingControlService$100000001;->initialTouchY:F

    sub-float/2addr v7, v8

    float-to-int v7, v7

    move v5, v7

    .line 125
    move v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/16 v8, 0xa

    if-gt v7, v8, :cond_0

    move v7, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/16 v8, 0xa

    if-le v7, v8, :cond_1

    .line 126
    :cond_0
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/example/gamebooster/FloatingControlService$100000001;->isMoving:Z

    .line 127
    move-object v7, v0

    iget-object v7, v7, Lcom/example/gamebooster/FloatingControlService$100000001;->handler:Landroid/os/Handler;

    move-object v8, v0

    iget-object v8, v8, Lcom/example/gamebooster/FloatingControlService$100000001;->longPress:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    move-object v7, v0

    iget-object v7, v7, Lcom/example/gamebooster/FloatingControlService$100000001;->val$params:Landroid/view/WindowManager$LayoutParams;

    move-object v8, v0

    iget v8, v8, Lcom/example/gamebooster/FloatingControlService$100000001;->initialX:I

    move v9, v4

    add-int/2addr v8, v9

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 129
    move-object v7, v0

    iget-object v7, v7, Lcom/example/gamebooster/FloatingControlService$100000001;->val$params:Landroid/view/WindowManager$LayoutParams;

    move-object v8, v0

    iget v8, v8, Lcom/example/gamebooster/FloatingControlService$100000001;->initialY:I

    move v9, v5

    add-int/2addr v8, v9

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 130
    move-object v7, v0

    iget-object v7, v7, Lcom/example/gamebooster/FloatingControlService$100000001;->this$0:Lcom/example/gamebooster/FloatingControlService;

    invoke-static {v7}, Lcom/example/gamebooster/FloatingControlService;->access$L1000001(Lcom/example/gamebooster/FloatingControlService;)Landroid/view/WindowManager;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/example/gamebooster/FloatingControlService$100000001;->val$button:Landroid/widget/TextView;

    move-object v9, v0

    iget-object v9, v9, Lcom/example/gamebooster/FloatingControlService$100000001;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v7, v8, v9}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    :cond_1
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 137
    :pswitch_2
    move-object v7, v0

    iget-object v7, v7, Lcom/example/gamebooster/FloatingControlService$100000001;->handler:Landroid/os/Handler;

    move-object v8, v0

    iget-object v8, v8, Lcom/example/gamebooster/FloatingControlService$100000001;->longPress:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    move-object v7, v0

    iget-boolean v7, v7, Lcom/example/gamebooster/FloatingControlService$100000001;->isMoving:Z

    if-nez v7, :cond_2

    move-object v7, v0

    iget-boolean v7, v7, Lcom/example/gamebooster/FloatingControlService$100000001;->longPressed:Z

    if-nez v7, :cond_2

    .line 140
    move-object v7, v0

    iget-object v7, v7, Lcom/example/gamebooster/FloatingControlService$100000001;->this$0:Lcom/example/gamebooster/FloatingControlService;

    move-object v8, v0

    iget-object v8, v8, Lcom/example/gamebooster/FloatingControlService$100000001;->val$button:Landroid/widget/TextView;

    move-object v9, v0

    iget-object v9, v9, Lcom/example/gamebooster/FloatingControlService$100000001;->val$type:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/example/gamebooster/FloatingControlService;->access$1000021(Lcom/example/gamebooster/FloatingControlService;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 143
    :cond_2
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
