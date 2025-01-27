.class Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/AnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;


# direct methods
.method constructor <init>(Lcom/github/barteksc/pdfviewer/AnimationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/barteksc/pdfviewer/AnimationManager;

    .line 128
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 139
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$000(Lcom/github/barteksc/pdfviewer/AnimationManager;)Lcom/github/barteksc/pdfviewer/PDFView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    .line 140
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$102(Lcom/github/barteksc/pdfviewer/AnimationManager;Z)Z

    .line 141
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$200(Lcom/github/barteksc/pdfviewer/AnimationManager;)V

    .line 142
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 146
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$000(Lcom/github/barteksc/pdfviewer/AnimationManager;)Lcom/github/barteksc/pdfviewer/PDFView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    .line 147
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$102(Lcom/github/barteksc/pdfviewer/AnimationManager;Z)Z

    .line 148
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$200(Lcom/github/barteksc/pdfviewer/AnimationManager;)V

    .line 149
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 132
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 133
    .local v0, "offset":F
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$000(Lcom/github/barteksc/pdfviewer/AnimationManager;)Lcom/github/barteksc/pdfviewer/PDFView;

    move-result-object v1

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {v2}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$000(Lcom/github/barteksc/pdfviewer/AnimationManager;)Lcom/github/barteksc/pdfviewer/PDFView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    .line 134
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$000(Lcom/github/barteksc/pdfviewer/AnimationManager;)Lcom/github/barteksc/pdfviewer/PDFView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPageByOffset()V

    .line 135
    return-void
.end method
