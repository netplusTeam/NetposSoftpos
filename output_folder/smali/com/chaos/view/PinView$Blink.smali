.class Lcom/chaos/view/PinView$Blink;
.super Ljava/lang/Object;
.source "PinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chaos/view/PinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Blink"
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/chaos/view/PinView;


# direct methods
.method private constructor <init>(Lcom/chaos/view/PinView;)V
    .locals 0

    .line 1080
    iput-object p1, p0, Lcom/chaos/view/PinView$Blink;->this$0:Lcom/chaos/view/PinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chaos/view/PinView;Lcom/chaos/view/PinView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/chaos/view/PinView;
    .param p2, "x1"    # Lcom/chaos/view/PinView$1;

    .line 1080
    invoke-direct {p0, p1}, Lcom/chaos/view/PinView$Blink;-><init>(Lcom/chaos/view/PinView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/chaos/view/PinView$Blink;)V
    .locals 0
    .param p0, "x0"    # Lcom/chaos/view/PinView$Blink;

    .line 1080
    invoke-direct {p0}, Lcom/chaos/view/PinView$Blink;->cancel()V

    return-void
.end method

.method private cancel()V
    .locals 1

    .line 1098
    iget-boolean v0, p0, Lcom/chaos/view/PinView$Blink;->mCancelled:Z

    if-nez v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/chaos/view/PinView$Blink;->this$0:Lcom/chaos/view/PinView;

    invoke-virtual {v0, p0}, Lcom/chaos/view/PinView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chaos/view/PinView$Blink;->mCancelled:Z

    .line 1102
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1085
    iget-boolean v0, p0, Lcom/chaos/view/PinView$Blink;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 1086
    return-void

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/chaos/view/PinView$Blink;->this$0:Lcom/chaos/view/PinView;

    invoke-virtual {v0, p0}, Lcom/chaos/view/PinView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1091
    iget-object v0, p0, Lcom/chaos/view/PinView$Blink;->this$0:Lcom/chaos/view/PinView;

    invoke-static {v0}, Lcom/chaos/view/PinView;->access$300(Lcom/chaos/view/PinView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/chaos/view/PinView$Blink;->this$0:Lcom/chaos/view/PinView;

    invoke-static {v0}, Lcom/chaos/view/PinView;->access$400(Lcom/chaos/view/PinView;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/chaos/view/PinView;->access$500(Lcom/chaos/view/PinView;Z)V

    .line 1093
    iget-object v0, p0, Lcom/chaos/view/PinView$Blink;->this$0:Lcom/chaos/view/PinView;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Lcom/chaos/view/PinView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1095
    :cond_1
    return-void
.end method

.method uncancel()V
    .locals 1

    .line 1105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chaos/view/PinView$Blink;->mCancelled:Z

    .line 1106
    return-void
.end method
