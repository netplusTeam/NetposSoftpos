.class Lbsh/util/JConsole$3;
.super Ljava/lang/Object;
.source "JConsole.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsh/util/JConsole;->print(Ljavax/swing/Icon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbsh/util/JConsole;

.field final synthetic val$icon:Ljavax/swing/Icon;


# direct methods
.method constructor <init>(Lbsh/util/JConsole;Ljavax/swing/Icon;)V
    .locals 0
    .param p1, "this$0"    # Lbsh/util/JConsole;

    .line 524
    iput-object p1, p0, Lbsh/util/JConsole$3;->this$0:Lbsh/util/JConsole;

    iput-object p2, p0, Lbsh/util/JConsole$3;->val$icon:Ljavax/swing/Icon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 526
    iget-object v0, p0, Lbsh/util/JConsole$3;->this$0:Lbsh/util/JConsole;

    invoke-static {v0}, Lbsh/util/JConsole;->access$000(Lbsh/util/JConsole;)Ljavax/swing/JTextPane;

    move-result-object v0

    iget-object v1, p0, Lbsh/util/JConsole$3;->val$icon:Ljavax/swing/Icon;

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->insertIcon(Ljavax/swing/Icon;)V

    .line 527
    iget-object v0, p0, Lbsh/util/JConsole$3;->this$0:Lbsh/util/JConsole;

    invoke-static {v0}, Lbsh/util/JConsole;->access$400(Lbsh/util/JConsole;)V

    .line 528
    iget-object v0, p0, Lbsh/util/JConsole$3;->this$0:Lbsh/util/JConsole;

    invoke-static {v0}, Lbsh/util/JConsole;->access$000(Lbsh/util/JConsole;)Ljavax/swing/JTextPane;

    move-result-object v0

    iget-object v1, p0, Lbsh/util/JConsole$3;->this$0:Lbsh/util/JConsole;

    invoke-static {v1}, Lbsh/util/JConsole;->access$100(Lbsh/util/JConsole;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setCaretPosition(I)V

    .line 529
    return-void
.end method
