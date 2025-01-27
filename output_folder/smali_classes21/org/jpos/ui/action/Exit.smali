.class public Lorg/jpos/ui/action/Exit;
.super Ljava/lang/Object;
.source "Exit.java"

# interfaces
.implements Ljava/awt/event/ActionListener;
.implements Lorg/jpos/ui/UIAware;


# instance fields
.field public exitCode:I

.field public ui:Lorg/jpos/ui/UI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/ui/action/Exit;->exitCode:I

    .line 34
    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1
    .param p1, "ev"    # Ljava/awt/event/ActionEvent;

    .line 39
    iget-object v0, p0, Lorg/jpos/ui/action/Exit;->ui:Lorg/jpos/ui/UI;

    invoke-virtual {v0}, Lorg/jpos/ui/UI;->dispose()V

    .line 41
    :try_start_0
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jpos/ui/action/Exit;->exitCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 43
    new-instance v0, Lorg/jpos/ui/action/Exit$1;

    invoke-direct {v0, p0}, Lorg/jpos/ui/action/Exit$1;-><init>(Lorg/jpos/ui/action/Exit;)V

    .line 47
    invoke-virtual {v0}, Lorg/jpos/ui/action/Exit$1;->start()V

    .line 48
    return-void
.end method

.method public setUI(Lorg/jpos/ui/UI;Lorg/jdom2/Element;)V
    .locals 0
    .param p1, "ui"    # Lorg/jpos/ui/UI;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 36
    iput-object p1, p0, Lorg/jpos/ui/action/Exit;->ui:Lorg/jpos/ui/UI;

    .line 37
    return-void
.end method
