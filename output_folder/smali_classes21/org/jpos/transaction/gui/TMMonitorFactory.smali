.class public Lorg/jpos/transaction/gui/TMMonitorFactory;
.super Ljava/lang/Object;
.source "TMMonitorFactory.java"

# interfaces
.implements Lorg/jpos/ui/UIFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/jpos/ui/UI;Lorg/jdom2/Element;)Ljavax/swing/JComponent;
    .locals 3
    .param p1, "ui"    # Lorg/jpos/ui/UI;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 32
    :try_start_0
    const-string v0, "transaction-manager"

    .line 33
    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/transaction/TransactionManager;

    .line 34
    .local v0, "tm":Lorg/jpos/transaction/TransactionManager;
    new-instance v1, Lorg/jpos/transaction/gui/TMMonitor;

    invoke-direct {v1, p1, v0}, Lorg/jpos/transaction/gui/TMMonitor;-><init>(Lorg/jpos/ui/UI;Lorg/jpos/transaction/TransactionManager;)V
    :try_end_0
    .catch Lorg/jpos/util/NameRegistrar$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 35
    .end local v0    # "tm":Lorg/jpos/transaction/TransactionManager;
    :catch_0
    move-exception v0

    .line 36
    .local v0, "ex":Lorg/jpos/util/NameRegistrar$NotFoundException;
    new-instance v1, Ljavax/swing/JTextArea;

    invoke-virtual {v0}, Lorg/jpos/util/NameRegistrar$NotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/swing/JTextArea;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
