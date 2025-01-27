.class public Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GenericValidatingPackager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/iso/packager/GenericValidatingPackager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GenericValidatorContentHandler"
.end annotation


# static fields
.field static final VALIDATOR_INDEX:I = -0x3


# instance fields
.field private fieldStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private fldID:Ljava/lang/String;

.field final synthetic this$0:Lorg/jpos/iso/packager/GenericValidatingPackager;

.field private validatorStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jpos/iso/packager/GenericValidatingPackager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/iso/packager/GenericValidatingPackager;

    .line 190
    iput-object p1, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->this$0:Lorg/jpos/iso/packager/GenericValidatingPackager;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method private makeFieldPackArray(Ljava/util/Map;)[Lorg/jpos/iso/ISOFieldPackager;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jpos/iso/ISOFieldPackager;",
            ">;)[",
            "Lorg/jpos/iso/ISOFieldPackager;"
        }
    .end annotation

    .line 314
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldPackager;>;"
    const/4 v0, 0x0

    .line 316
    .local v0, "maxField":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 317
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldPackager;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v0, :cond_0

    .line 318
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 317
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldPackager;>;"
    :cond_0
    goto :goto_0

    .line 320
    :cond_1
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lorg/jpos/iso/ISOFieldPackager;

    .line 322
    .local v1, "fld":[Lorg/jpos/iso/ISOFieldPackager;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 323
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldPackager;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jpos/iso/ISOFieldPackager;

    aput-object v5, v1, v4

    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldPackager;>;"
    goto :goto_1

    .line 324
    :cond_2
    return-object v1
.end method


# virtual methods
.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->fieldStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    return-void

    .line 200
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Format error in XML Field Description File"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .line 329
    const-string v0, "isopackager"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->fieldStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 331
    .local v0, "m":Ljava/util/Map;
    iget-object v1, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->this$0:Lorg/jpos/iso/packager/GenericValidatingPackager;

    invoke-direct {p0, v0}, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->makeFieldPackArray(Ljava/util/Map;)[Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/iso/packager/GenericValidatingPackager;->setFieldPackager([Lorg/jpos/iso/ISOFieldPackager;)V

    .line 332
    iget-object v1, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->validatorStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    .line 333
    iget-object v1, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->this$0:Lorg/jpos/iso/packager/GenericValidatingPackager;

    invoke-virtual {p0, v0}, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->makeFieldValidatorArray(Ljava/util/Map;)[Lorg/jpos/iso/ISOFieldValidator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/iso/packager/GenericValidatingPackager;->setFieldValidator([Lorg/jpos/iso/ISOFieldValidator;)V

    .line 334
    iget-object v1, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->this$0:Lorg/jpos/iso/packager/GenericValidatingPackager;

    invoke-virtual {p0, v0}, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->makeMsgValidatorArray(Ljava/util/Map;)[Lorg/jpos/iso/ISOBaseValidator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/iso/packager/GenericValidatingPackager;->setMsgValidator([Lorg/jpos/iso/ISOBaseValidator;)V

    .line 336
    .end local v0    # "m":Ljava/util/Map;
    :cond_0
    const-string v0, "isofieldvalidator"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    iget-object v0, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->validatorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 339
    .local v0, "p":Ljava/util/Properties;
    const/4 v1, 0x0

    .line 340
    .local v1, "cfg":Lorg/jpos/core/SimpleConfiguration;
    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 341
    new-instance v2, Lorg/jpos/core/SimpleConfiguration;

    invoke-direct {v2, v0}, Lorg/jpos/core/SimpleConfiguration;-><init>(Ljava/util/Properties;)V

    move-object v1, v2

    .line 343
    :cond_1
    iget-object v2, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->validatorStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/iso/ISOFieldValidator;

    .line 344
    .local v2, "f":Lorg/jpos/iso/ISOFieldValidator;
    if-eqz v1, :cond_2

    .line 346
    :try_start_0
    invoke-virtual {v2, v1}, Lorg/jpos/iso/ISOFieldValidator;->setConfiguration(Lorg/jpos/core/Configuration;)V
    :try_end_0
    .catch Lorg/jpos/core/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    goto :goto_0

    .line 348
    :catch_0
    move-exception v3

    .line 349
    .local v3, "ex":Lorg/jpos/core/ConfigurationException;
    invoke-virtual {v3}, Lorg/jpos/core/ConfigurationException;->printStackTrace()V

    .line 352
    .end local v3    # "ex":Lorg/jpos/core/ConfigurationException;
    :cond_2
    :goto_0
    iget-object v3, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->validatorStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    iget-object v5, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->fldID:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .end local v0    # "p":Ljava/util/Properties;
    .end local v1    # "cfg":Lorg/jpos/core/SimpleConfiguration;
    .end local v2    # "f":Lorg/jpos/iso/ISOFieldValidator;
    :cond_3
    const-string v0, "isovalidator"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 356
    iget-object v0, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->validatorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 357
    .restart local v0    # "p":Ljava/util/Properties;
    const/4 v1, 0x0

    .line 358
    .restart local v1    # "cfg":Lorg/jpos/core/SimpleConfiguration;
    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 359
    new-instance v2, Lorg/jpos/core/SimpleConfiguration;

    invoke-direct {v2, v0}, Lorg/jpos/core/SimpleConfiguration;-><init>(Ljava/util/Properties;)V

    move-object v1, v2

    .line 361
    :cond_4
    iget-object v2, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->validatorStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/iso/ISOBaseValidator;

    .line 362
    .local v2, "v":Lorg/jpos/iso/ISOBaseValidator;
    if-eqz v1, :cond_5

    .line 364
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/jpos/iso/ISOBaseValidator;->setConfiguration(Lorg/jpos/core/Configuration;)V
    :try_end_1
    .catch Lorg/jpos/core/ConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 368
    goto :goto_1

    .line 366
    :catch_1
    move-exception v3

    .line 367
    .restart local v3    # "ex":Lorg/jpos/core/ConfigurationException;
    invoke-virtual {v3}, Lorg/jpos/core/ConfigurationException;->printStackTrace()V

    .line 371
    .end local v3    # "ex":Lorg/jpos/core/ConfigurationException;
    :cond_5
    :goto_1
    iget-object v3, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->validatorStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const/4 v4, -0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v0    # "p":Ljava/util/Properties;
    .end local v1    # "cfg":Lorg/jpos/core/SimpleConfiguration;
    .end local v2    # "v":Lorg/jpos/iso/ISOBaseValidator;
    :cond_6
    const-string v0, "isofieldpackager"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 375
    iget-object v0, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->fieldStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 376
    .local v0, "m":Ljava/util/Map;
    iget-object v1, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->fieldStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/iso/ISOBasePackager;

    .line 377
    .local v1, "msgPackager":Lorg/jpos/iso/ISOBasePackager;
    iget-object v2, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->this$0:Lorg/jpos/iso/packager/GenericValidatingPackager;

    invoke-static {v2, v0}, Lorg/jpos/iso/packager/GenericValidatingPackager;->access$000(Lorg/jpos/iso/packager/GenericValidatingPackager;Ljava/util/Map;)[Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/iso/ISOBasePackager;->setFieldPackager([Lorg/jpos/iso/ISOFieldPackager;)V

    .line 378
    iget-object v2, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->this$0:Lorg/jpos/iso/packager/GenericValidatingPackager;

    invoke-virtual {v2}, Lorg/jpos/iso/packager/GenericValidatingPackager;->getLogger()Lorg/jpos/util/Logger;

    move-result-object v2

    const-string v3, "Generic Packager"

    invoke-virtual {v1, v2, v3}, Lorg/jpos/iso/ISOBasePackager;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 379
    iget-object v2, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->fieldStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/iso/ISOFieldPackager;

    .line 380
    .local v2, "fieldPackager":Lorg/jpos/iso/ISOFieldPackager;
    iget-object v3, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->fieldStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 382
    .local v3, "fno":Ljava/lang/Integer;
    new-instance v4, Lorg/jpos/iso/ISOMsgFieldPackager;

    invoke-direct {v4, v2, v1}, Lorg/jpos/iso/ISOMsgFieldPackager;-><init>(Lorg/jpos/iso/ISOFieldPackager;Lorg/jpos/iso/ISOPackager;)V

    .line 387
    .local v4, "mfp":Lorg/jpos/iso/ISOMsgFieldPackager;
    iget-object v5, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->fieldStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Map;

    .line 388
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v5, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->validatorStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 390
    .local v5, "val":Ljava/util/Map;
    iget-object v6, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->validatorStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jpos/iso/packager/ISOBaseValidatingPackager;

    .line 391
    .local v6, "v":Lorg/jpos/iso/packager/ISOBaseValidatingPackager;
    invoke-virtual {p0, v5}, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->makeFieldValidatorArray(Ljava/util/Map;)[Lorg/jpos/iso/ISOFieldValidator;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jpos/iso/packager/ISOBaseValidatingPackager;->setFieldValidator([Lorg/jpos/iso/ISOValidator;)V

    .line 392
    invoke-virtual {p0, v5}, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->makeMsgValidatorArray(Ljava/util/Map;)[Lorg/jpos/iso/ISOBaseValidator;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jpos/iso/packager/ISOBaseValidatingPackager;->setMsgValidator([Lorg/jpos/iso/ISOBaseValidator;)V

    .line 393
    new-instance v7, Lorg/jpos/iso/ISOMsgFieldValidator;

    invoke-virtual {v2}, Lorg/jpos/iso/ISOFieldPackager;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lorg/jpos/iso/ISOMsgFieldValidator;-><init>(Ljava/lang/String;Lorg/jpos/iso/ISOValidator;)V

    .line 394
    .local v7, "mfv":Lorg/jpos/iso/ISOMsgFieldValidator;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/jpos/iso/ISOMsgFieldValidator;->setFieldId(I)V

    .line 395
    iget-object v8, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->this$0:Lorg/jpos/iso/packager/GenericValidatingPackager;

    invoke-virtual {v8}, Lorg/jpos/iso/packager/GenericValidatingPackager;->getLogger()Lorg/jpos/util/Logger;

    move-result-object v8

    const-string v9, "Generic validating Packager"

    invoke-virtual {v6, v8, v9}, Lorg/jpos/iso/packager/ISOBaseValidatingPackager;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 396
    iget-object v8, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->validatorStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/Map;

    .line 397
    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .end local v0    # "m":Ljava/util/Map;
    .end local v1    # "msgPackager":Lorg/jpos/iso/ISOBasePackager;
    .end local v2    # "fieldPackager":Lorg/jpos/iso/ISOFieldPackager;
    .end local v3    # "fno":Ljava/lang/Integer;
    .end local v4    # "mfp":Lorg/jpos/iso/ISOMsgFieldPackager;
    .end local v5    # "val":Ljava/util/Map;
    .end local v6    # "v":Lorg/jpos/iso/packager/ISOBaseValidatingPackager;
    .end local v7    # "mfv":Lorg/jpos/iso/ISOMsgFieldValidator;
    :cond_7
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .param p1, "ex"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 421
    throw p1
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .param p1, "ex"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 427
    throw p1
.end method

.method makeFieldValidatorArray(Ljava/util/Map;)[Lorg/jpos/iso/ISOFieldValidator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jpos/iso/ISOFieldValidator;",
            ">;)[",
            "Lorg/jpos/iso/ISOFieldValidator;"
        }
    .end annotation

    .line 402
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldValidator;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/iso/ISOFieldValidator;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 405
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldValidator;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x3

    if-eq v3, v4, :cond_0

    .line 406
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldValidator;>;"
    :cond_0
    goto :goto_0

    .line 408
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jpos/iso/ISOFieldValidator;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jpos/iso/ISOFieldValidator;

    return-object v1
.end method

.method makeMsgValidatorArray(Ljava/util/Map;)[Lorg/jpos/iso/ISOBaseValidator;
    .locals 2
    .param p1, "m"    # Ljava/util/Map;

    .line 413
    const/4 v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 414
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/iso/ISOBaseValidator;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jpos/iso/ISOBaseValidator;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jpos/iso/ISOBaseValidator;

    return-object v1
.end method

.method public startDocument()V
    .locals 1

    .line 193
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->fieldStack:Ljava/util/Stack;

    .line 194
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->validatorStack:Ljava/util/Stack;

    .line 195
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 17
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 207
    :try_start_0
    const-string v0, "isopackager"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, -0x3

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, v1, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->fieldStack:Ljava/util/Stack;

    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 213
    .local v0, "m":Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v5, v1, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->validatorStack:Ljava/util/Stack;

    invoke-virtual {v5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v5, v1, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->this$0:Lorg/jpos/iso/packager/GenericValidatingPackager;

    invoke-virtual {v5, v3}, Lorg/jpos/iso/packager/GenericValidatingPackager;->setGenericPackagerParams(Lorg/xml/sax/Attributes;)V

    .line 218
    .end local v0    # "m":Ljava/util/Map;
    :cond_0
    const-string v0, "isofield"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "pad"

    const-string v6, "length"

    const-string v7, "id"

    const-string v8, "name"

    const-string v9, "class"

    if-eqz v0, :cond_1

    .line 220
    :try_start_1
    invoke-interface {v3, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->fldID:Ljava/lang/String;

    .line 221
    invoke-interface {v3, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "type":Ljava/lang/String;
    invoke-interface {v3, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 223
    .local v10, "name":Ljava/lang/String;
    invoke-interface {v3, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 224
    .local v11, "size":Ljava/lang/String;
    invoke-interface {v3, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 225
    .local v12, "pad":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 227
    .local v13, "c":Ljava/lang/Class;
    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jpos/iso/ISOFieldPackager;

    .line 228
    .local v14, "f":Lorg/jpos/iso/ISOFieldPackager;
    invoke-virtual {v14, v10}, Lorg/jpos/iso/ISOFieldPackager;->setDescription(Ljava/lang/String;)V

    .line 229
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Lorg/jpos/iso/ISOFieldPackager;->setLength(I)V

    .line 230
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v14, v15}, Lorg/jpos/iso/ISOFieldPackager;->setPad(Z)V

    .line 233
    iget-object v15, v1, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->fieldStack:Ljava/util/Stack;

    invoke-virtual {v15}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    .line 234
    .local v15, "m":Ljava/util/Map;
    new-instance v4, Ljava/lang/Integer;

    move-object/from16 v16, v0

    .end local v0    # "type":Ljava/lang/String;
    .local v16, "type":Ljava/lang/String;
    iget-object v0, v1, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->fldID:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-interface {v15, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "size":Ljava/lang/String;
    .end local v12    # "pad":Ljava/lang/String;
    .end local v13    # "c":Ljava/lang/Class;
    .end local v14    # "f":Lorg/jpos/iso/ISOFieldPackager;
    .end local v15    # "m":Ljava/util/Map;
    .end local v16    # "type":Ljava/lang/String;
    :cond_1
    const-string v0, "isofieldvalidator"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "break-on-error"

    if-eqz v0, :cond_5

    .line 237
    :try_start_2
    invoke-interface {v3, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .restart local v0    # "type":Ljava/lang/String;
    invoke-interface {v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 239
    .local v10, "breakOnError":Ljava/lang/String;
    const-string v11, "minlen"

    invoke-interface {v3, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 240
    .local v11, "minLen":Ljava/lang/String;
    const-string v12, "maxlen"

    invoke-interface {v3, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 241
    .local v12, "maxLen":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 242
    .restart local v13    # "c":Ljava/lang/Class;
    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jpos/iso/ISOFieldValidator;

    .line 243
    .local v14, "v":Lorg/jpos/iso/ISOFieldValidator;
    if-eqz v10, :cond_2

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-virtual {v14, v15}, Lorg/jpos/iso/ISOFieldValidator;->setBreakOnError(Z)V

    .line 244
    :cond_2
    if-eqz v11, :cond_3

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Lorg/jpos/iso/ISOFieldValidator;->setMinLength(I)V

    .line 245
    :cond_3
    if-eqz v12, :cond_4

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Lorg/jpos/iso/ISOFieldValidator;->setMaxLength(I)V

    .line 246
    :cond_4
    iget-object v15, v1, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->fldID:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Lorg/jpos/iso/ISOFieldValidator;->setFieldId(I)V

    .line 248
    iget-object v15, v1, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->validatorStack:Ljava/util/Stack;

    invoke-virtual {v15, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v15, v1, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->validatorStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    .end local v0    # "type":Ljava/lang/String;
    .restart local v16    # "type":Ljava/lang/String;
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v15, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .end local v10    # "breakOnError":Ljava/lang/String;
    .end local v11    # "minLen":Ljava/lang/String;
    .end local v12    # "maxLen":Ljava/lang/String;
    .end local v13    # "c":Ljava/lang/Class;
    .end local v14    # "v":Lorg/jpos/iso/ISOFieldValidator;
    .end local v16    # "type":Ljava/lang/String;
    :cond_5
    const-string v0, "property"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 252
    iget-object v0, v1, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->validatorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 253
    invoke-interface {v3, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "value"

    .line 254
    invoke-interface {v3, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 252
    invoke-virtual {v0, v10, v11}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 256
    :cond_6
    const-string v0, "isovalidator"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 257
    invoke-interface {v3, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .restart local v0    # "type":Ljava/lang/String;
    invoke-interface {v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, "breakOnError":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 260
    .local v10, "c":Ljava/lang/Class;
    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jpos/iso/ISOBaseValidator;

    .line 261
    .local v11, "v":Lorg/jpos/iso/ISOBaseValidator;
    if-eqz v4, :cond_7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v11, v12}, Lorg/jpos/iso/ISOBaseValidator;->setBreakOnError(Z)V

    .line 263
    :cond_7
    iget-object v12, v1, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->validatorStack:Ljava/util/Stack;

    invoke-virtual {v12, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v12, v1, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->validatorStack:Ljava/util/Stack;

    new-instance v13, Ljava/util/Properties;

    invoke-direct {v13}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v12, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .end local v0    # "type":Ljava/lang/String;
    .end local v4    # "breakOnError":Ljava/lang/String;
    .end local v10    # "c":Ljava/lang/Class;
    .end local v11    # "v":Lorg/jpos/iso/ISOBaseValidator;
    :cond_8
    const-string v0, "isofieldpackager"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 267
    invoke-interface {v3, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "id":Ljava/lang/String;
    invoke-interface {v3, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, "type":Ljava/lang/String;
    invoke-interface {v3, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 270
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v3, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, "size":Ljava/lang/String;
    invoke-interface {v3, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, "pad":Ljava/lang/String;
    const-string v8, "packager"

    invoke-interface {v3, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 281
    .local v8, "packager":Ljava/lang/String;
    iget-object v9, v1, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->fieldStack:Ljava/util/Stack;

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jpos/iso/ISOFieldPackager;

    .line 284
    .local v9, "f":Lorg/jpos/iso/ISOFieldPackager;
    invoke-virtual {v9, v7}, Lorg/jpos/iso/ISOFieldPackager;->setDescription(Ljava/lang/String;)V

    .line 285
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/jpos/iso/ISOFieldPackager;->setLength(I)V

    .line 286
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Lorg/jpos/iso/ISOFieldPackager;->setPad(Z)V

    .line 287
    iget-object v10, v1, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->fieldStack:Ljava/util/Stack;

    invoke-virtual {v10, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jpos/iso/ISOBasePackager;

    .line 290
    .local v10, "p":Lorg/jpos/iso/ISOBasePackager;
    instance-of v11, v10, Lorg/jpos/iso/packager/GenericValidatingPackager;

    if-eqz v11, :cond_9

    .line 291
    move-object v11, v10

    check-cast v11, Lorg/jpos/iso/packager/GenericValidatingPackager;

    .line 292
    .local v11, "gp":Lorg/jpos/iso/packager/GenericValidatingPackager;
    invoke-virtual {v11, v3}, Lorg/jpos/iso/packager/GenericValidatingPackager;->setGenericPackagerParams(Lorg/xml/sax/Attributes;)V

    .line 294
    .end local v11    # "gp":Lorg/jpos/iso/packager/GenericValidatingPackager;
    :cond_9
    iget-object v11, v1, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->fieldStack:Ljava/util/Stack;

    invoke-virtual {v11, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v11, "validator"

    invoke-interface {v3, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 297
    .local v11, "validator":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jpos/iso/packager/ISOBaseValidatingPackager;

    .line 298
    .local v12, "v":Lorg/jpos/iso/packager/ISOBaseValidatingPackager;
    iget-object v13, v1, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->validatorStack:Ljava/util/Stack;

    invoke-virtual {v13, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v13, Ljava/util/TreeMap;

    invoke-direct {v13}, Ljava/util/TreeMap;-><init>()V

    .line 300
    .local v13, "m":Ljava/util/Map;
    const/4 v14, -0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v14, v1, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->validatorStack:Ljava/util/Stack;

    invoke-virtual {v14, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v14, v1, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;->fieldStack:Ljava/util/Stack;

    new-instance v15, Ljava/util/TreeMap;

    invoke-direct {v15}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v14, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 306
    .end local v0    # "id":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "pad":Ljava/lang/String;
    .end local v6    # "size":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "packager":Ljava/lang/String;
    .end local v9    # "f":Lorg/jpos/iso/ISOFieldPackager;
    .end local v10    # "p":Lorg/jpos/iso/ISOBasePackager;
    .end local v11    # "validator":Ljava/lang/String;
    .end local v12    # "v":Lorg/jpos/iso/packager/ISOBaseValidatingPackager;
    .end local v13    # "m":Ljava/util/Map;
    :cond_a
    nop

    .line 307
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method
