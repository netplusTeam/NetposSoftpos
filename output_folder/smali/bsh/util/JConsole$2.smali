.class Lbsh/util/JConsole$2;
.super Ljava/lang/Object;
.source "JConsole.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsh/util/JConsole;->print(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbsh/util/JConsole;

.field final synthetic val$o:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lbsh/util/JConsole;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lbsh/util/JConsole;

    .line 493
    iput-object p1, p0, Lbsh/util/JConsole$2;->this$0:Lbsh/util/JConsole;

    iput-object p2, p0, Lbsh/util/JConsole$2;->val$o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 495
    iget-object v0, p0, Lbsh/util/JConsole$2;->this$0:Lbsh/util/JConsole;

    iget-object v1, p0, Lbsh/util/JConsole$2;->val$o:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbsh/util/JConsole;->access$300(Lbsh/util/JConsole;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lbsh/util/JConsole$2;->this$0:Lbsh/util/JConsole;

    invoke-static {v0}, Lbsh/util/JConsole;->access$400(Lbsh/util/JConsole;)V

    .line 497
    iget-object v0, p0, Lbsh/util/JConsole$2;->this$0:Lbsh/util/JConsole;

    invoke-static {v0}, Lbsh/util/JConsole;->access$000(Lbsh/util/JConsole;)Ljavax/swing/JTextPane;

    move-result-object v0

    iget-object v1, p0, Lbsh/util/JConsole$2;->this$0:Lbsh/util/JConsole;

    invoke-static {v1}, Lbsh/util/JConsole;->access$100(Lbsh/util/JConsole;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setCaretPosition(I)V

    .line 498
    return-void
.end method
