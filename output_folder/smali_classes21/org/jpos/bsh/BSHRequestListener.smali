.class public Lorg/jpos/bsh/BSHRequestListener;
.super Lorg/jpos/util/Log;
.source "BSHRequestListener.java"

# interfaces
.implements Lorg/jpos/iso/ISORequestListener;
.implements Lorg/jpos/core/Configurable;


# static fields
.field protected static final MTI_MACRO:Ljava/lang/String; = "$mti"


# instance fields
.field protected bshSource:[Ljava/lang/String;

.field cfg:Lorg/jpos/core/Configuration;

.field protected whitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/jpos/util/Log;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public process(Lorg/jpos/iso/ISOSource;Lorg/jpos/iso/ISOMsg;)Z
    .locals 12
    .param p1, "source"    # Lorg/jpos/iso/ISOSource;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;

    .line 66
    const-string v0, "$mti"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Lorg/jpos/iso/ISOMsg;->getMTI()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "mti":Ljava/lang/String;
    iget-object v3, p0, Lorg/jpos/bsh/BSHRequestListener;->whitelist:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/jpos/bsh/BSHRequestListener;->whitelist:Ljava/util/HashSet;

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 68
    const-string v3, "unsupported"

    move-object v2, v3

    .line 70
    :cond_0
    iget-object v3, p0, Lorg/jpos/bsh/BSHRequestListener;->bshSource:[Ljava/lang/String;

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    .local v6, "aBshSource":Ljava/lang/String;
    :try_start_1
    new-instance v7, Lbsh/Interpreter;

    invoke-direct {v7}, Lbsh/Interpreter;-><init>()V

    .line 73
    .local v7, "bsh":Lbsh/Interpreter;
    const-string v8, "source"

    invoke-virtual {v7, v8, p1}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    const-string v8, "message"

    invoke-virtual {v7, v8, p2}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    const-string v8, "log"

    invoke-virtual {v7, v8, p0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    const-string v8, "cfg"

    iget-object v9, p0, Lorg/jpos/bsh/BSHRequestListener;->cfg:Lorg/jpos/core/Configuration;

    invoke-virtual {v7, v8, v9}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 81
    .local v8, "idx":I
    if-ltz v8, :cond_1

    .line 83
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "script":Ljava/lang/String;
    goto :goto_1

    .line 86
    .end local v9    # "script":Ljava/lang/String;
    :cond_1
    move-object v9, v6

    .line 89
    .restart local v9    # "script":Ljava/lang/String;
    :goto_1
    invoke-virtual {v7, v9}, Lbsh/Interpreter;->source(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 93
    .local v10, "ret":Ljava/lang/Object;
    if-eqz v10, :cond_3

    instance-of v11, v10, Ljava/lang/Boolean;

    if-eqz v11, :cond_2

    move-object v11, v10

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v11, :cond_3

    .line 94
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 99
    .end local v7    # "bsh":Lbsh/Interpreter;
    .end local v8    # "idx":I
    .end local v9    # "script":Ljava/lang/String;
    .end local v10    # "ret":Ljava/lang/Object;
    :cond_3
    goto :goto_2

    .line 97
    :catch_0
    move-exception v7

    .line 98
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p0, v7}, Lorg/jpos/bsh/BSHRequestListener;->warn(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 70
    .end local v6    # "aBshSource":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "mti":Ljava/lang/String;
    :cond_4
    nop

    .line 106
    return v1

    .line 101
    :catch_1
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/jpos/bsh/BSHRequestListener;->warn(Ljava/lang/Object;)V

    .line 103
    return v1
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lorg/jpos/bsh/BSHRequestListener;->cfg:Lorg/jpos/core/Configuration;

    .line 59
    const-string v0, "source"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->getAll(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/bsh/BSHRequestListener;->bshSource:[Ljava/lang/String;

    .line 60
    const-string v0, "whitelist"

    const-string v1, "*"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "mti":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/jpos/bsh/BSHRequestListener;->whitelist:Ljava/util/HashSet;

    .line 62
    return-void
.end method
