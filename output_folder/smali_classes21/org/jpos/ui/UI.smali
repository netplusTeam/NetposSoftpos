.class public Lorg/jpos/ui/UI;
.super Ljava/lang/Object;
.source "UI.java"

# interfaces
.implements Lorg/jpos/ui/UIFactory;
.implements Lorg/jpos/ui/UIObjectFactory;


# static fields
.field static final classMapping:Ljava/util/ResourceBundle;


# instance fields
.field config:Lorg/jdom2/Element;

.field destroyed:Z

.field log:Lorg/jpos/util/Log;

.field mainFrame:Ljavax/swing/JFrame;

.field mapping:Ljava/util/Map;

.field objFactory:Lorg/jpos/ui/UIObjectFactory;

.field registrar:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lorg/jpos/ui/UI;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lorg/jpos/ui/UI;->classMapping:Ljava/util/ResourceBundle;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/ui/UI;->destroyed:Z

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/ui/UI;->registrar:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/ui/UI;->mapping:Ljava/util/Map;

    .line 62
    invoke-virtual {p0, p0}, Lorg/jpos/ui/UI;->setObjectFactory(Lorg/jpos/ui/UIObjectFactory;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;)V
    .locals 0
    .param p1, "config"    # Lorg/jdom2/Element;

    .line 69
    invoke-direct {p0}, Lorg/jpos/ui/UI;-><init>()V

    .line 70
    invoke-virtual {p0, p1}, Lorg/jpos/ui/UI;->setConfig(Lorg/jdom2/Element;)V

    .line 71
    return-void
.end method

.method private addButtonGroup(Ljavax/swing/JMenu;Lorg/jdom2/Element;)V
    .locals 3
    .param p1, "menu"    # Ljavax/swing/JMenu;
    .param p2, "m"    # Lorg/jdom2/Element;

    .line 321
    new-instance v0, Ljavax/swing/ButtonGroup;

    invoke-direct {v0}, Ljavax/swing/ButtonGroup;-><init>()V

    .line 322
    .local v0, "group":Ljavax/swing/ButtonGroup;
    const-string v1, "radio-button"

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 323
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Element;

    invoke-direct {p0, p1, v0, v2}, Lorg/jpos/ui/UI;->addRadioButton(Ljavax/swing/JMenu;Ljavax/swing/ButtonGroup;Lorg/jdom2/Element;)V

    goto :goto_0

    .line 326
    :cond_0
    return-void
.end method

.method private addMenuItem(Ljavax/swing/JMenu;Lorg/jdom2/Element;)V
    .locals 4
    .param p1, "menu"    # Ljavax/swing/JMenu;
    .param p2, "m"    # Lorg/jdom2/Element;

    .line 297
    invoke-virtual {p2}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "tag":Ljava/lang/String;
    const-string v1, "menuitem"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "id"

    if-eqz v1, :cond_0

    .line 300
    new-instance v1, Ljavax/swing/JMenuItem;

    invoke-virtual {p2, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 301
    .local v1, "item":Ljavax/swing/JMenuItem;
    invoke-direct {p0, v1, p2}, Lorg/jpos/ui/UI;->setItemAttributes(Ljavax/swing/AbstractButton;Lorg/jdom2/Element;)V

    .line 302
    invoke-virtual {p1, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 303
    .end local v1    # "item":Ljavax/swing/JMenuItem;
    goto :goto_1

    :cond_0
    const-string v1, "menuseparator"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    invoke-virtual {p1}, Ljavax/swing/JMenu;->addSeparator()V

    goto :goto_1

    .line 305
    :cond_1
    const-string v1, "button-group"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    invoke-direct {p0, p1, p2}, Lorg/jpos/ui/UI;->addButtonGroup(Ljavax/swing/JMenu;Lorg/jdom2/Element;)V

    goto :goto_1

    .line 307
    :cond_2
    const-string v1, "check-box"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 308
    new-instance v1, Ljavax/swing/JCheckBoxMenuItem;

    .line 309
    invoke-virtual {p2, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/swing/JCheckBoxMenuItem;-><init>(Ljava/lang/String;)V

    .line 311
    .local v1, "item":Ljavax/swing/JCheckBoxMenuItem;
    invoke-direct {p0, v1, p2}, Lorg/jpos/ui/UI;->setItemAttributes(Ljavax/swing/AbstractButton;Lorg/jdom2/Element;)V

    .line 312
    nop

    .line 313
    const-string v2, "state"

    invoke-virtual {p2, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 312
    invoke-virtual {v1, v2}, Ljavax/swing/JCheckBoxMenuItem;->setState(Z)V

    .line 315
    invoke-virtual {p1, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .end local v1    # "item":Ljavax/swing/JCheckBoxMenuItem;
    goto :goto_0

    .line 316
    :cond_3
    const-string v1, "menu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 317
    invoke-direct {p0, p2}, Lorg/jpos/ui/UI;->menu(Lorg/jdom2/Element;)Ljavax/swing/JMenu;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    goto :goto_1

    .line 316
    :cond_4
    :goto_0
    nop

    .line 319
    :goto_1
    return-void
.end method

.method private addRadioButton(Ljavax/swing/JMenu;Ljavax/swing/ButtonGroup;Lorg/jdom2/Element;)V
    .locals 3
    .param p1, "menu"    # Ljavax/swing/JMenu;
    .param p2, "group"    # Ljavax/swing/ButtonGroup;
    .param p3, "m"    # Lorg/jdom2/Element;

    .line 328
    new-instance v0, Ljavax/swing/JRadioButtonMenuItem;

    .line 329
    const-string v1, "id"

    invoke-virtual {p3, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/JRadioButtonMenuItem;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "item":Ljavax/swing/JRadioButtonMenuItem;
    invoke-direct {p0, v0, p3}, Lorg/jpos/ui/UI;->setItemAttributes(Ljavax/swing/AbstractButton;Lorg/jdom2/Element;)V

    .line 331
    nop

    .line 332
    const-string v1, "selected"

    invoke-virtual {p3, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 331
    invoke-virtual {v0, v1}, Ljavax/swing/JRadioButtonMenuItem;->setSelected(Z)V

    .line 334
    invoke-virtual {p2, v0}, Ljavax/swing/ButtonGroup;->add(Ljavax/swing/AbstractButton;)V

    .line 335
    invoke-virtual {p1, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 336
    return-void
.end method

.method private buildMenuBar(Lorg/jdom2/Element;)Ljavax/swing/JMenuBar;
    .locals 3
    .param p1, "ui"    # Lorg/jdom2/Element;

    .line 281
    new-instance v0, Ljavax/swing/JMenuBar;

    invoke-direct {v0}, Ljavax/swing/JMenuBar;-><init>()V

    .line 282
    .local v0, "mb":Ljavax/swing/JMenuBar;
    const-string v1, "menu"

    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 283
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Element;

    invoke-direct {p0, v2}, Lorg/jpos/ui/UI;->menu(Lorg/jdom2/Element;)Ljavax/swing/JMenu;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    goto :goto_0

    .line 286
    :cond_0
    return-object v0
.end method

.method private createComponent(Lorg/jdom2/Element;)Ljavax/swing/JComponent;
    .locals 6
    .param p1, "e"    # Lorg/jdom2/Element;

    .line 377
    if-nez p1, :cond_0

    .line 378
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    return-object v0

    .line 381
    :cond_0
    const/4 v0, 0x0

    .line 382
    .local v0, "factory":Lorg/jpos/ui/UIFactory;
    const-string v1, "class"

    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "clazz":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 384
    iget-object v2, p0, Lorg/jpos/ui/UI;->mapping:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 385
    :cond_1
    if-nez v1, :cond_2

    .line 387
    :try_start_0
    sget-object v2, Lorg/jpos/ui/UI;->classMapping:Ljava/util/ResourceBundle;

    invoke-virtual {p1}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 390
    goto :goto_0

    .line 388
    :catch_0
    move-exception v2

    .line 393
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 394
    move-object v0, p0

    goto :goto_1

    .line 396
    :cond_3
    :try_start_1
    iget-object v2, p0, Lorg/jpos/ui/UI;->objFactory:Lorg/jpos/ui/UIObjectFactory;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jpos/ui/UIObjectFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/ui/UIFactory;

    move-object v0, v2

    .line 398
    :goto_1
    invoke-interface {v0, p0, p1}, Lorg/jpos/ui/UIFactory;->create(Lorg/jpos/ui/UI;Lorg/jdom2/Element;)Ljavax/swing/JComponent;

    move-result-object v2

    .line 399
    .local v2, "component":Ljavax/swing/JComponent;
    invoke-direct {p0, v2, p1}, Lorg/jpos/ui/UI;->setSize(Ljavax/swing/JComponent;Lorg/jdom2/Element;)V

    .line 400
    instance-of v3, v2, Ljavax/swing/AbstractButton;

    if-eqz v3, :cond_4

    .line 401
    move-object v3, v2

    check-cast v3, Ljavax/swing/AbstractButton;

    .line 402
    .local v3, "b":Ljavax/swing/AbstractButton;
    const-string v4, "command"

    invoke-virtual {p1, v4}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/swing/AbstractButton;->setActionCommand(Ljava/lang/String;)V

    .line 403
    const-string v4, "action"

    invoke-virtual {p1, v4}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 404
    .local v4, "actionId":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 405
    invoke-virtual {p0, v4}, Lorg/jpos/ui/UI;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/awt/event/ActionListener;

    invoke-virtual {v3, v5}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 408
    .end local v3    # "b":Ljavax/swing/AbstractButton;
    .end local v4    # "actionId":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v2, p1}, Lorg/jpos/ui/UI;->put(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 410
    const-string v3, "script"

    invoke-virtual {p1, v3}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v3

    .line 411
    .local v3, "script":Lorg/jdom2/Element;
    if-eqz v3, :cond_5

    .line 412
    invoke-virtual {p0, v2, v3}, Lorg/jpos/ui/UI;->doScript(Ljavax/swing/JComponent;Lorg/jdom2/Element;)Ljavax/swing/JComponent;

    move-result-object v4

    move-object v2, v4

    .line 414
    :cond_5
    const-string v4, "true"

    const-string v5, "scrollable"

    invoke-virtual {p1, v5}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 415
    new-instance v4, Ljavax/swing/JScrollPane;

    invoke-direct {v4, v2}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v4

    .line 420
    .end local v3    # "script":Lorg/jdom2/Element;
    :cond_6
    goto :goto_2

    .line 416
    .end local v2    # "component":Ljavax/swing/JComponent;
    :catch_1
    move-exception v2

    .line 417
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error instantiating class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jpos/ui/UI;->warn(Ljava/lang/Object;)V

    .line 418
    invoke-virtual {p0, v2}, Lorg/jpos/ui/UI;->warn(Ljava/lang/Object;)V

    .line 419
    new-instance v3, Ljavax/swing/JLabel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 421
    .local v2, "component":Ljavax/swing/JComponent;
    :goto_2
    return-object v2
.end method

.method private createMappings(Lorg/jdom2/Element;)V
    .locals 5
    .param p1, "e"    # Lorg/jdom2/Element;

    .line 482
    const-string v0, "mapping"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 483
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 486
    .local v1, "ee":Lorg/jdom2/Element;
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "name":Ljava/lang/String;
    const-string v3, "factory"

    invoke-virtual {v1, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, "clazz":Ljava/lang/String;
    iget-object v4, p0, Lorg/jpos/ui/UI;->mapping:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    nop

    .end local v1    # "ee":Lorg/jdom2/Element;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "clazz":Ljava/lang/String;
    goto :goto_0

    .line 489
    :catch_0
    move-exception v1

    .line 490
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/jpos/ui/UI;->warn(Ljava/lang/Object;)V

    .line 491
    .end local v1    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 493
    :cond_0
    return-void
.end method

.method private createObjects(Lorg/jdom2/Element;Ljava/lang/String;)V
    .locals 5
    .param p1, "e"    # Lorg/jdom2/Element;
    .param p2, "name"    # Ljava/lang/String;

    .line 466
    invoke-virtual {p1, p2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 467
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 470
    .local v1, "ee":Lorg/jdom2/Element;
    const-string v2, "class"

    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "clazz":Ljava/lang/String;
    iget-object v3, p0, Lorg/jpos/ui/UI;->objFactory:Lorg/jpos/ui/UIObjectFactory;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jpos/ui/UIObjectFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 472
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Lorg/jpos/ui/UIAware;

    if-eqz v4, :cond_0

    .line 473
    move-object v4, v3

    check-cast v4, Lorg/jpos/ui/UIAware;

    invoke-interface {v4, p0, v1}, Lorg/jpos/ui/UIAware;->setUI(Lorg/jpos/ui/UI;Lorg/jdom2/Element;)V

    .line 475
    :cond_0
    invoke-direct {p0, v3, v1}, Lorg/jpos/ui/UI;->put(Ljava/lang/Object;Lorg/jdom2/Element;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "ee":Lorg/jdom2/Element;
    .end local v2    # "clazz":Ljava/lang/String;
    .end local v3    # "obj":Ljava/lang/Object;
    goto :goto_1

    .line 476
    :catch_0
    move-exception v1

    .line 477
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/jpos/ui/UI;->warn(Ljava/lang/Object;)V

    .line 478
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 480
    :cond_1
    return-void
.end method

.method private dumpComponent(Ljava/awt/Component;)V
    .locals 4
    .param p1, "c"    # Ljava/awt/Component;

    .line 241
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/awt/Component;->getBounds()Ljava/awt/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/Rectangle;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/Dimension;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    instance-of v0, p1, Ljava/awt/Container;

    if-eqz v0, :cond_0

    .line 243
    move-object v0, p1

    check-cast v0, Ljava/awt/Container;

    invoke-virtual {v0}, Ljava/awt/Container;->getComponents()[Ljava/awt/Component;

    move-result-object v0

    .line 244
    .local v0, "cc":[Ljava/awt/Component;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 245
    .local v3, "aCc":Ljava/awt/Component;
    invoke-direct {p0, v3}, Lorg/jpos/ui/UI;->dumpComponent(Ljava/awt/Component;)V

    .line 244
    .end local v3    # "aCc":Ljava/awt/Component;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "cc":[Ljava/awt/Component;
    :cond_0
    return-void
.end method

.method private getDimension(Lorg/jdom2/Element;Ljava/awt/Dimension;)Ljava/awt/Dimension;
    .locals 5
    .param p1, "e"    # Lorg/jdom2/Element;
    .param p2, "def"    # Ljava/awt/Dimension;

    .line 338
    const-string v0, "width"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "w":Ljava/lang/String;
    const-string v1, "height"

    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "h":Ljava/lang/String;
    new-instance v2, Ljava/awt/Dimension;

    if-eqz v0, :cond_0

    .line 342
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_0
    iget v3, p2, Ljava/awt/Dimension;->width:I

    :goto_0
    if-eqz v1, :cond_1

    .line 343
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_1
    iget v4, p2, Ljava/awt/Dimension;->height:I

    :goto_1
    invoke-direct {v2, v3, v4}, Ljava/awt/Dimension;-><init>(II)V

    .line 341
    return-object v2
.end method

.method private initFrame(Lorg/jdom2/Element;)Ljavax/swing/JFrame;
    .locals 5
    .param p1, "ui"    # Lorg/jdom2/Element;

    .line 251
    const-string v0, "caption"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    .line 252
    .local v0, "caption":Lorg/jdom2/Element;
    new-instance v1, Ljavax/swing/JFrame;

    if-nez v0, :cond_0

    invoke-direct {v1}, Ljavax/swing/JFrame;-><init>()V

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {v0}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v1, p0, Lorg/jpos/ui/UI;->mainFrame:Ljavax/swing/JFrame;

    .line 256
    invoke-static {v1}, Ljavax/swing/JOptionPane;->setRootFrame(Ljava/awt/Frame;)V

    .line 258
    iget-object v1, p0, Lorg/jpos/ui/UI;->mainFrame:Ljavax/swing/JFrame;

    invoke-virtual {v1}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    new-instance v2, Ljava/awt/BorderLayout;

    invoke-direct {v2}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v1, v2}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 260
    const-string v1, "close"

    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "close":Ljava/lang/String;
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Lorg/jpos/ui/UI;->mainFrame:Ljavax/swing/JFrame;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavax/swing/JFrame;->setDefaultCloseOperation(I)V

    goto :goto_1

    .line 264
    :cond_1
    const-string v2, "exit"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    iget-object v2, p0, Lorg/jpos/ui/UI;->mainFrame:Ljavax/swing/JFrame;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljavax/swing/JFrame;->setDefaultCloseOperation(I)V

    .line 267
    :cond_2
    :goto_1
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v2

    .line 268
    .local v2, "screenSize":Ljava/awt/Dimension;
    iget-object v3, p0, Lorg/jpos/ui/UI;->mainFrame:Ljavax/swing/JFrame;

    invoke-direct {p0, p1, v2}, Lorg/jpos/ui/UI;->getDimension(Lorg/jdom2/Element;Ljava/awt/Dimension;)Ljava/awt/Dimension;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/swing/JFrame;->setSize(Ljava/awt/Dimension;)V

    .line 269
    iget-object v3, p0, Lorg/jpos/ui/UI;->mainFrame:Ljavax/swing/JFrame;

    invoke-direct {p0, v3}, Lorg/jpos/ui/UI;->locateOnScreen(Ljava/awt/Frame;)V

    .line 270
    iget-object v3, p0, Lorg/jpos/ui/UI;->mainFrame:Ljavax/swing/JFrame;

    return-object v3
.end method

.method private locateOnScreen(Ljava/awt/Frame;)V
    .locals 5
    .param p1, "frame"    # Ljava/awt/Frame;

    .line 274
    invoke-virtual {p1}, Ljava/awt/Frame;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 275
    .local v0, "paneSize":Ljava/awt/Dimension;
    invoke-virtual {p1}, Ljava/awt/Frame;->getToolkit()Ljava/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v1

    .line 276
    .local v1, "screenSize":Ljava/awt/Dimension;
    iget v2, v1, Ljava/awt/Dimension;->width:I

    iget v3, v0, Ljava/awt/Dimension;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, v1, Ljava/awt/Dimension;->height:I

    iget v4, v0, Ljava/awt/Dimension;->height:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/awt/Frame;->setLocation(II)V

    .line 279
    return-void
.end method

.method private menu(Lorg/jdom2/Element;)Ljavax/swing/JMenu;
    .locals 3
    .param p1, "m"    # Lorg/jdom2/Element;

    .line 289
    new-instance v0, Ljavax/swing/JMenu;

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, "menu":Ljavax/swing/JMenu;
    invoke-direct {p0, v0, p1}, Lorg/jpos/ui/UI;->setItemAttributes(Ljavax/swing/AbstractButton;Lorg/jdom2/Element;)V

    .line 291
    invoke-virtual {p1}, Lorg/jdom2/Element;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 292
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Element;

    invoke-direct {p0, v0, v2}, Lorg/jpos/ui/UI;->addMenuItem(Ljavax/swing/JMenu;Lorg/jdom2/Element;)V

    goto :goto_0

    .line 294
    :cond_0
    return-object v0
.end method

.method private put(Ljava/lang/Object;Lorg/jdom2/Element;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 504
    const-string v0, "id"

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 506
    iget-object v1, p0, Lorg/jpos/ui/UI;->registrar:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :cond_0
    return-void
.end method

.method private removeComponent(Ljava/awt/Component;)V
    .locals 5
    .param p1, "c"    # Ljava/awt/Component;

    .line 228
    instance-of v0, p1, Ljava/awt/Container;

    if-eqz v0, :cond_1

    .line 229
    move-object v0, p1

    check-cast v0, Ljava/awt/Container;

    .line 230
    .local v0, "cont":Ljava/awt/Container;
    invoke-virtual {v0}, Ljava/awt/Container;->getComponents()[Ljava/awt/Component;

    move-result-object v1

    .line 232
    .local v1, "cc":[Ljava/awt/Component;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 233
    .local v4, "aCc":Ljava/awt/Component;
    invoke-direct {p0, v4}, Lorg/jpos/ui/UI;->removeComponent(Ljava/awt/Component;)V

    .line 232
    .end local v4    # "aCc":Ljava/awt/Component;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {v0}, Ljava/awt/Container;->removeAll()V

    .line 237
    .end local v0    # "cont":Ljava/awt/Container;
    .end local v1    # "cc":[Ljava/awt/Component;
    :cond_1
    return-void
.end method

.method private setItemAttributes(Ljavax/swing/AbstractButton;Lorg/jdom2/Element;)V
    .locals 4
    .param p1, "b"    # Ljavax/swing/AbstractButton;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 348
    const-string v0, "accesskey"

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 350
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 352
    :cond_0
    const-string v1, "icon"

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "icon":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 355
    :try_start_0
    new-instance v2, Ljavax/swing/ImageIcon;

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;)V

    invoke-virtual {p1, v2}, Ljavax/swing/AbstractButton;->setIcon(Ljavax/swing/Icon;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    goto :goto_0

    .line 356
    :catch_0
    move-exception v2

    .line 357
    .local v2, "ex":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 360
    .end local v2    # "ex":Ljava/net/MalformedURLException;
    :cond_1
    :goto_0
    const-string v2, "command"

    invoke-virtual {p2, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljavax/swing/AbstractButton;->setActionCommand(Ljava/lang/String;)V

    .line 361
    const-string v2, "action"

    invoke-virtual {p2, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, "actionId":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 363
    invoke-virtual {p0, v2}, Lorg/jpos/ui/UI;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/awt/event/ActionListener;

    invoke-virtual {p1, v3}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 365
    :cond_2
    return-void
.end method

.method private setSize(Ljavax/swing/JComponent;Lorg/jdom2/Element;)V
    .locals 7
    .param p1, "c"    # Ljavax/swing/JComponent;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 427
    const-string v0, "width"

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "w":Ljava/lang/String;
    const-string v1, "height"

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "h":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/swing/JComponent;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v2

    .line 430
    .local v2, "d":Ljava/awt/Dimension;
    invoke-virtual {v2}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v3

    .line 431
    .local v3, "dw":D
    invoke-virtual {v2}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v5

    .line 432
    .local v5, "dh":D
    if-eqz v0, :cond_0

    .line 433
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 434
    :cond_0
    if-eqz v1, :cond_1

    .line 435
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 436
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 437
    :cond_2
    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/awt/Dimension;->setSize(DD)V

    .line 438
    invoke-virtual {p1, v2}, Ljavax/swing/JComponent;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 440
    :cond_3
    return-void
.end method


# virtual methods
.method public configure()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lorg/jpos/ui/UI;->config:Lorg/jdom2/Element;

    invoke-virtual {p0, v0}, Lorg/jpos/ui/UI;->configure(Lorg/jdom2/Element;)V

    .line 143
    return-void
.end method

.method protected configure(Lorg/jdom2/Element;)V
    .locals 5
    .param p1, "ui"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0, p1}, Lorg/jpos/ui/UI;->setLookAndFeel(Lorg/jdom2/Element;)V

    .line 198
    invoke-direct {p0, p1}, Lorg/jpos/ui/UI;->createMappings(Lorg/jdom2/Element;)V

    .line 199
    const-string v0, "object"

    invoke-direct {p0, p1, v0}, Lorg/jpos/ui/UI;->createObjects(Lorg/jdom2/Element;Ljava/lang/String;)V

    .line 200
    const-string v0, "action"

    invoke-direct {p0, p1, v0}, Lorg/jpos/ui/UI;->createObjects(Lorg/jdom2/Element;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object p1

    .line 204
    :cond_0
    if-eqz p1, :cond_3

    .line 205
    invoke-direct {p0, p1}, Lorg/jpos/ui/UI;->initFrame(Lorg/jdom2/Element;)Ljavax/swing/JFrame;

    move-result-object v0

    .line 206
    .local v0, "frame":Ljavax/swing/JFrame;
    const-string v1, "menubar"

    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    .line 207
    .local v1, "mb":Lorg/jdom2/Element;
    if-eqz v1, :cond_1

    .line 208
    invoke-direct {p0, v1}, Lorg/jpos/ui/UI;->buildMenuBar(Lorg/jdom2/Element;)Ljavax/swing/JMenuBar;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JFrame;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    .line 210
    :cond_1
    nop

    .line 211
    const-string v2, "components"

    invoke-virtual {p1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jpos/ui/UI;->createComponent(Lorg/jdom2/Element;)Ljavax/swing/JComponent;

    move-result-object v2

    .line 210
    invoke-virtual {v0, v2}, Ljavax/swing/JFrame;->setContentPane(Ljava/awt/Container;)V

    .line 213
    const-string v2, "full-screen"

    invoke-virtual {p1, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object v2

    .line 216
    invoke-virtual {v2}, Ljava/awt/GraphicsEnvironment;->getDefaultScreenDevice()Ljava/awt/GraphicsDevice;

    move-result-object v2

    .line 217
    .local v2, "device":Ljava/awt/GraphicsDevice;
    nop

    .line 218
    const-string v4, "undecorated"

    invoke-virtual {p1, v4}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 217
    invoke-virtual {v0, v3}, Ljavax/swing/JFrame;->setUndecorated(Z)V

    .line 220
    invoke-virtual {v2, v0}, Ljava/awt/GraphicsDevice;->setFullScreenWindow(Ljava/awt/Window;)V

    .line 221
    .end local v2    # "device":Ljava/awt/GraphicsDevice;
    goto :goto_0

    .line 222
    :cond_2
    invoke-virtual {v0}, Ljavax/swing/JFrame;->show()V

    .line 225
    .end local v0    # "frame":Ljavax/swing/JFrame;
    .end local v1    # "mb":Lorg/jdom2/Element;
    :cond_3
    :goto_0
    return-void
.end method

.method public create(Lorg/jdom2/Element;)Ljavax/swing/JComponent;
    .locals 5
    .param p1, "e"    # Lorg/jdom2/Element;

    .line 442
    const/4 v0, 0x0

    .line 444
    .local v0, "component":Ljavax/swing/JComponent;
    invoke-virtual {p1}, Lorg/jdom2/Element;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 445
    .local v1, "iter":Ljava/util/Iterator;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 446
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Element;

    invoke-direct {p0, v3}, Lorg/jpos/ui/UI;->createComponent(Lorg/jdom2/Element;)Ljavax/swing/JComponent;

    move-result-object v3

    .line 447
    .local v3, "c":Ljavax/swing/JComponent;
    if-nez v2, :cond_0

    .line 448
    move-object v0, v3

    goto :goto_1

    .line 449
    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 450
    new-instance v4, Ljavax/swing/JPanel;

    invoke-direct {v4}, Ljavax/swing/JPanel;-><init>()V

    .line 451
    .local v4, "p":Ljavax/swing/JPanel;
    invoke-virtual {v4, v0}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 452
    invoke-virtual {v4, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 453
    move-object v0, v4

    .line 454
    invoke-direct {p0, v0, p1}, Lorg/jpos/ui/UI;->put(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 455
    .end local v4    # "p":Ljavax/swing/JPanel;
    goto :goto_1

    .line 456
    :cond_1
    invoke-virtual {v0, v3}, Ljavax/swing/JComponent;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 445
    .end local v3    # "c":Ljavax/swing/JComponent;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 459
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method public create(Lorg/jpos/ui/UI;Lorg/jdom2/Element;)Ljavax/swing/JComponent;
    .locals 1
    .param p1, "ui"    # Lorg/jpos/ui/UI;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 123
    invoke-virtual {p0, p2}, Lorg/jpos/ui/UI;->create(Lorg/jdom2/Element;)Ljavax/swing/JComponent;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 2

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/ui/UI;->destroyed:Z

    .line 182
    invoke-static {}, Ljava/awt/Frame;->getFrames()[Ljava/awt/Frame;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 184
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/swing/JFrame;

    .line 186
    .local v1, "jf":Ljavax/swing/JFrame;
    invoke-direct {p0, v1}, Lorg/jpos/ui/UI;->removeComponent(Ljava/awt/Component;)V

    .line 187
    .end local v1    # "jf":Ljavax/swing/JFrame;
    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method

.method protected doScript(Ljavax/swing/JComponent;Lorg/jdom2/Element;)Ljavax/swing/JComponent;
    .locals 0
    .param p1, "component"    # Ljavax/swing/JComponent;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 424
    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lorg/jpos/ui/UI;->registrar:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLog()Lorg/jpos/util/Log;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/jpos/ui/UI;->log:Lorg/jpos/util/Log;

    return-object v0
.end method

.method public getMainFrame()Ljavax/swing/JFrame;
    .locals 1

    .line 462
    iget-object v0, p0, Lorg/jpos/ui/UI;->mainFrame:Ljavax/swing/JFrame;

    return-object v0
.end method

.method public getRegistrar()Ljava/util/Map;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/jpos/ui/UI;->registrar:Ljava/util/Map;

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lorg/jpos/ui/UI;->destroyed:Z

    return v0
.end method

.method public newInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "clazz"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 135
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 136
    .local v1, "type":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public reconfigure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "panelName"    # Ljava/lang/String;

    .line 154
    if-nez p2, :cond_0

    iget-object v0, p0, Lorg/jpos/ui/UI;->mainFrame:Ljavax/swing/JFrame;

    .line 155
    invoke-virtual {v0}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lorg/jpos/ui/UI;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/JComponent;

    .line 156
    .local v0, "c":Ljava/awt/Container;
    :goto_0
    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {v0}, Ljava/awt/Container;->removeAll()V

    .line 158
    iget-object v1, p0, Lorg/jpos/ui/UI;->config:Lorg/jdom2/Element;

    .line 159
    invoke-virtual {v1, p1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jpos/ui/UI;->createComponent(Lorg/jdom2/Element;)Ljavax/swing/JComponent;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 161
    instance-of v1, v0, Ljavax/swing/JComponent;

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {v0}, Ljava/awt/Container;->revalidate()V

    .line 164
    :cond_1
    invoke-virtual {v0}, Ljava/awt/Container;->repaint()V

    .line 166
    :cond_2
    return-void
.end method

.method public setConfig(Lorg/jdom2/Element;)V
    .locals 0
    .param p1, "config"    # Lorg/jdom2/Element;

    .line 85
    iput-object p1, p0, Lorg/jpos/ui/UI;->config:Lorg/jdom2/Element;

    .line 86
    return-void
.end method

.method public setLog(Lorg/jpos/util/Log;)V
    .locals 0
    .param p1, "log"    # Lorg/jpos/util/Log;

    .line 92
    iput-object p1, p0, Lorg/jpos/ui/UI;->log:Lorg/jpos/util/Log;

    .line 93
    return-void
.end method

.method protected setLookAndFeel(Lorg/jdom2/Element;)V
    .locals 2
    .param p1, "ui"    # Lorg/jdom2/Element;

    .line 367
    const-string v0, "look-and-feel"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "laf":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 370
    :try_start_0
    invoke-static {v0}, Ljavax/swing/UIManager;->setLookAndFeel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    goto :goto_0

    .line 371
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/jpos/ui/UI;->warn(Ljava/lang/Object;)V

    .line 375
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setObjectFactory(Lorg/jpos/ui/UIObjectFactory;)V
    .locals 0
    .param p1, "objFactory"    # Lorg/jpos/ui/UIObjectFactory;

    .line 79
    iput-object p1, p0, Lorg/jpos/ui/UI;->objFactory:Lorg/jpos/ui/UIObjectFactory;

    .line 80
    return-void
.end method

.method protected warn(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 495
    iget-object v0, p0, Lorg/jpos/ui/UI;->log:Lorg/jpos/util/Log;

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {v0, p1}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 497
    :cond_0
    return-void
.end method

.method protected warn(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "ex"    # Ljava/lang/Exception;

    .line 499
    iget-object v0, p0, Lorg/jpos/ui/UI;->log:Lorg/jpos/util/Log;

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v0, p1, p2}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 501
    :cond_0
    return-void
.end method
