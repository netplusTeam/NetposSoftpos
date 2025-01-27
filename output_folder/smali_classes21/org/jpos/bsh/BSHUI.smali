.class public Lorg/jpos/bsh/BSHUI;
.super Lorg/jpos/ui/UI;
.source "BSHUI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/jpos/ui/UI;-><init>()V

    return-void
.end method


# virtual methods
.method protected doScript(Ljavax/swing/JComponent;Lorg/jdom2/Element;)Ljavax/swing/JComponent;
    .locals 4
    .param p1, "component"    # Ljavax/swing/JComponent;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 35
    const-string v0, "component"

    :try_start_0
    new-instance v1, Lbsh/Interpreter;

    invoke-direct {v1}, Lbsh/Interpreter;-><init>()V

    .line 36
    .local v1, "bsh":Lbsh/Interpreter;
    invoke-virtual {v1, v0, p1}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    const-string v2, "config"

    invoke-virtual {v1, v2, p2}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const-string v2, "log"

    invoke-virtual {p0}, Lorg/jpos/bsh/BSHUI;->getLog()Lorg/jpos/util/Log;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    const-string v2, "ui"

    invoke-virtual {v1, v2, p0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    const-string v2, "import java.awt.*;"

    invoke-virtual {v1, v2}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    const-string v2, "import java.awt.event.*;"

    invoke-virtual {v1, v2}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    const-string v2, "import javax.swing.*;"

    invoke-virtual {v1, v2}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    const-string v2, "import org.jpos.ui.*;"

    invoke-virtual {v1, v2}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p2}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    invoke-virtual {v1, v0}, Lbsh/Interpreter;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/JComponent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 46
    .end local v1    # "bsh":Lbsh/Interpreter;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/jpos/bsh/BSHUI;->warn(Ljava/lang/Object;)V

    .line 48
    new-instance v1, Ljavax/swing/JLabel;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
