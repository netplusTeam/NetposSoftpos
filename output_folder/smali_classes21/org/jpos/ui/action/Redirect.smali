.class public Lorg/jpos/ui/action/Redirect;
.super Ljava/lang/Object;
.source "Redirect.java"

# interfaces
.implements Ljava/awt/event/ActionListener;
.implements Lorg/jpos/ui/UIAware;


# instance fields
.field public ui:Lorg/jpos/ui/UI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 4
    .param p1, "ev"    # Ljava/awt/event/ActionEvent;

    .line 38
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "st":Ljava/util/StringTokenizer;
    iget-object v1, p0, Lorg/jpos/ui/action/Redirect;->ui:Lorg/jpos/ui/UI;

    .line 40
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 39
    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/jpos/ui/UI;->reconfigure(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public setUI(Lorg/jpos/ui/UI;Lorg/jdom2/Element;)V
    .locals 0
    .param p1, "ui"    # Lorg/jpos/ui/UI;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 35
    iput-object p1, p0, Lorg/jpos/ui/action/Redirect;->ui:Lorg/jpos/ui/UI;

    .line 36
    return-void
.end method
