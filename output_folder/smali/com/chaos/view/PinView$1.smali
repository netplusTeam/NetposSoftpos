.class Lcom/chaos/view/PinView$1;
.super Ljava/lang/Object;
.source "PinView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chaos/view/PinView;->setupAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chaos/view/PinView;


# direct methods
.method constructor <init>(Lcom/chaos/view/PinView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/chaos/view/PinView;

    .line 234
    iput-object p1, p0, Lcom/chaos/view/PinView$1;->this$0:Lcom/chaos/view/PinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 237
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 238
    .local v0, "scale":F
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 239
    .local v1, "alpha":I
    iget-object v2, p0, Lcom/chaos/view/PinView$1;->this$0:Lcom/chaos/view/PinView;

    invoke-static {v2}, Lcom/chaos/view/PinView;->access$000(Lcom/chaos/view/PinView;)Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/chaos/view/PinView$1;->this$0:Lcom/chaos/view/PinView;

    invoke-virtual {v3}, Lcom/chaos/view/PinView;->getTextSize()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 240
    iget-object v2, p0, Lcom/chaos/view/PinView$1;->this$0:Lcom/chaos/view/PinView;

    invoke-static {v2}, Lcom/chaos/view/PinView;->access$000(Lcom/chaos/view/PinView;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 241
    iget-object v2, p0, Lcom/chaos/view/PinView$1;->this$0:Lcom/chaos/view/PinView;

    invoke-virtual {v2}, Lcom/chaos/view/PinView;->postInvalidate()V

    .line 242
    return-void
.end method
