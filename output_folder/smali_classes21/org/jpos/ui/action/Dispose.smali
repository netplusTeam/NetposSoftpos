.class public Lorg/jpos/ui/action/Dispose;
.super Ljava/lang/Object;
.source "Dispose.java"

# interfaces
.implements Ljava/awt/event/ActionListener;
.implements Lorg/jpos/ui/UIAware;


# instance fields
.field public ui:Lorg/jpos/ui/UI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1
    .param p1, "ev"    # Ljava/awt/event/ActionEvent;

    .line 37
    iget-object v0, p0, Lorg/jpos/ui/action/Dispose;->ui:Lorg/jpos/ui/UI;

    invoke-virtual {v0}, Lorg/jpos/ui/UI;->dispose()V

    .line 38
    return-void
.end method

.method public setUI(Lorg/jpos/ui/UI;Lorg/jdom2/Element;)V
    .locals 0
    .param p1, "ui"    # Lorg/jpos/ui/UI;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 34
    iput-object p1, p0, Lorg/jpos/ui/action/Dispose;->ui:Lorg/jpos/ui/UI;

    .line 35
    return-void
.end method
