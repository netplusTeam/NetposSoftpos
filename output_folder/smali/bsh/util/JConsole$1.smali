.class Lbsh/util/JConsole$1;
.super Ljavax/swing/JTextPane;
.source "JConsole.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsh/util/JConsole;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbsh/util/JConsole;


# direct methods
.method constructor <init>(Lbsh/util/JConsole;Ljavax/swing/text/StyledDocument;)V
    .locals 0
    .param p1, "this$0"    # Lbsh/util/JConsole;
    .param p2, "x0"    # Ljavax/swing/text/StyledDocument;

    .line 101
    iput-object p1, p0, Lbsh/util/JConsole$1;->this$0:Lbsh/util/JConsole;

    invoke-direct {p0, p2}, Ljavax/swing/JTextPane;-><init>(Ljavax/swing/text/StyledDocument;)V

    return-void
.end method


# virtual methods
.method public cut()V
    .locals 2

    .line 103
    iget-object v0, p0, Lbsh/util/JConsole$1;->this$0:Lbsh/util/JConsole;

    invoke-static {v0}, Lbsh/util/JConsole;->access$000(Lbsh/util/JConsole;)Ljavax/swing/JTextPane;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->getCaretPosition()I

    move-result v0

    iget-object v1, p0, Lbsh/util/JConsole$1;->this$0:Lbsh/util/JConsole;

    invoke-static {v1}, Lbsh/util/JConsole;->access$100(Lbsh/util/JConsole;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 104
    invoke-super {p0}, Ljavax/swing/JTextPane;->copy()V

    goto :goto_0

    .line 106
    :cond_0
    invoke-super {p0}, Ljavax/swing/JTextPane;->cut()V

    .line 108
    :goto_0
    return-void
.end method

.method public paste()V
    .locals 1

    .line 111
    iget-object v0, p0, Lbsh/util/JConsole$1;->this$0:Lbsh/util/JConsole;

    invoke-static {v0}, Lbsh/util/JConsole;->access$200(Lbsh/util/JConsole;)V

    .line 112
    invoke-super {p0}, Ljavax/swing/JTextPane;->paste()V

    .line 113
    return-void
.end method
