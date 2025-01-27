.class public Lorg/jpos/iso/validator/VErrorParser;
.super Ljava/lang/Object;
.source "VErrorParser.java"

# interfaces
.implements Lorg/jpos/util/LogSource;
.implements Lorg/jpos/util/Loggeable;


# instance fields
.field private _errors:Ljava/util/Vector;

.field protected logger:Lorg/jpos/util/Logger;

.field protected realm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/validator/VErrorParser;->logger:Lorg/jpos/util/Logger;

    .line 136
    iput-object v0, p0, Lorg/jpos/iso/validator/VErrorParser;->realm:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lorg/jpos/iso/validator/VErrorParser;->_errors:Ljava/util/Vector;

    return-void
.end method

.method private _getErr(Lorg/jpos/iso/ISOComponent;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 5
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "list"    # Ljava/util/Vector;
    .param p3, "id"    # Ljava/lang/String;

    .line 108
    instance-of v0, p1, Lorg/jpos/iso/ISOVField;

    if-eqz v0, :cond_1

    .line 109
    move-object v0, p1

    check-cast v0, Lorg/jpos/iso/ISOVField;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOVField;->errorListIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 110
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/iso/ISOVError;

    .line 112
    .local v1, "error":Lorg/jpos/iso/ISOVError;
    invoke-virtual {v1, p3}, Lorg/jpos/iso/ISOVError;->setId(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v1    # "error":Lorg/jpos/iso/ISOVError;
    goto :goto_0

    .line 115
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_0
    goto :goto_3

    .line 116
    :cond_1
    instance-of v0, p1, Lorg/jpos/iso/ISOMsg;

    if-eqz v0, :cond_4

    .line 117
    instance-of v0, p1, Lorg/jpos/iso/ISOVMsg;

    if-eqz v0, :cond_2

    .line 119
    move-object v0, p1

    check-cast v0, Lorg/jpos/iso/ISOVMsg;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOVMsg;->errorListIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 120
    .restart local v0    # "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/iso/ISOVError;

    .line 122
    .restart local v1    # "error":Lorg/jpos/iso/ISOVError;
    invoke-virtual {v1, p3}, Lorg/jpos/iso/ISOVError;->setId(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v1    # "error":Lorg/jpos/iso/ISOVError;
    goto :goto_1

    .line 127
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getChildren()Ljava/util/Map;

    move-result-object v0

    .line 128
    .local v0, "fields":Ljava/util/Map;
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getMaxField()I

    move-result v1

    .line 129
    .local v1, "max":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-gt v2, v1, :cond_4

    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOComponent;

    move-object p1, v3

    if-eqz v3, :cond_3

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lorg/jpos/iso/validator/VErrorParser;->_getErr(Lorg/jpos/iso/ISOComponent;Ljava/util/Vector;Ljava/lang/String;)V

    .line 129
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 133
    .end local v0    # "fields":Ljava/util/Map;
    .end local v1    # "max":I
    .end local v2    # "i":I
    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 95
    return-void
.end method

.method public getLogger()Lorg/jpos/util/Logger;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/jpos/iso/validator/VErrorParser;->logger:Lorg/jpos/util/Logger;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/jpos/iso/validator/VErrorParser;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getVErrors(Lorg/jpos/iso/ISOComponent;)Ljava/util/Vector;
    .locals 2
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 50
    .local v0, "v":Ljava/util/Vector;
    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lorg/jpos/iso/validator/VErrorParser;->_getErr(Lorg/jpos/iso/ISOComponent;Ljava/util/Vector;Ljava/lang/String;)V

    .line 51
    iput-object v0, p0, Lorg/jpos/iso/validator/VErrorParser;->_errors:Ljava/util/Vector;

    .line 52
    return-object v0
.end method

.method public parseXMLErrorList()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, ""

    return-object v0
.end method

.method public resetErrors()V
    .locals 1

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/validator/VErrorParser;->_errors:Ljava/util/Vector;

    .line 102
    return-void
.end method

.method public setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lorg/jpos/iso/validator/VErrorParser;->logger:Lorg/jpos/util/Logger;

    .line 62
    iput-object p2, p0, Lorg/jpos/iso/validator/VErrorParser;->realm:Ljava/lang/String;

    .line 63
    return-void
.end method
