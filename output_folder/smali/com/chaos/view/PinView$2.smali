.class Lcom/chaos/view/PinView$2;
.super Lcom/chaos/view/PinView$DefaultActionModeCallback;
.source "PinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chaos/view/PinView;->disableSelectionMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chaos/view/PinView;


# direct methods
.method constructor <init>(Lcom/chaos/view/PinView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/chaos/view/PinView;

    .line 1114
    iput-object p1, p0, Lcom/chaos/view/PinView$2;->this$0:Lcom/chaos/view/PinView;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chaos/view/PinView$DefaultActionModeCallback;-><init>(Lcom/chaos/view/PinView$1;)V

    return-void
.end method


# virtual methods
.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 1117
    const v0, 0x1020043

    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 1118
    const/4 v0, 0x1

    return v0
.end method
