.class public abstract Lnet/sf/scuba/data/Country;
.super Ljava/lang/Object;
.source "Country.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final SUB_CLASSES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x7e87c99c3e4fc62eL


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const-string v0, "net.sf.scuba"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lnet/sf/scuba/data/Country;->LOGGER:Ljava/util/logging/Logger;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lnet/sf/scuba/data/UnicodeCountry;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lnet/sf/scuba/data/ISOCountry;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lnet/sf/scuba/data/TestCountry;

    aput-object v2, v0, v1

    sput-object v0, Lnet/sf/scuba/data/Country;->SUB_CLASSES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromAlpha2(Ljava/lang/String;)Lnet/sf/scuba/data/Country;
    .locals 5
    .param p0, "code"    # Ljava/lang/String;

    .line 149
    invoke-static {}, Lnet/sf/scuba/data/Country;->values()[Lnet/sf/scuba/data/Country;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 150
    .local v3, "country":Lnet/sf/scuba/data/Country;
    invoke-virtual {v3}, Lnet/sf/scuba/data/Country;->toAlpha2Code()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    return-object v3

    .line 149
    .end local v3    # "country":Lnet/sf/scuba/data/Country;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown country code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static fromAlpha3(Ljava/lang/String;)Lnet/sf/scuba/data/Country;
    .locals 5
    .param p0, "code"    # Ljava/lang/String;

    .line 158
    invoke-static {}, Lnet/sf/scuba/data/Country;->values()[Lnet/sf/scuba/data/Country;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 159
    .local v3, "country":Lnet/sf/scuba/data/Country;
    invoke-virtual {v3}, Lnet/sf/scuba/data/Country;->toAlpha3Code()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    return-object v3

    .line 158
    .end local v3    # "country":Lnet/sf/scuba/data/Country;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown country code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(I)Lnet/sf/scuba/data/Country;
    .locals 5
    .param p0, "code"    # I

    .line 57
    invoke-static {}, Lnet/sf/scuba/data/Country;->values()[Lnet/sf/scuba/data/Country;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 58
    .local v3, "country":Lnet/sf/scuba/data/Country;
    invoke-virtual {v3}, Lnet/sf/scuba/data/Country;->valueOf()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 59
    return-object v3

    .line 57
    .end local v3    # "country":Lnet/sf/scuba/data/Country;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal country code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/String;)Lnet/sf/scuba/data/Country;
    .locals 3
    .param p0, "code"    # Ljava/lang/String;

    .line 73
    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal country code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :pswitch_0
    invoke-static {p0}, Lnet/sf/scuba/data/Country;->fromAlpha3(Ljava/lang/String;)Lnet/sf/scuba/data/Country;

    move-result-object v0

    return-object v0

    .line 79
    :pswitch_1
    invoke-static {p0}, Lnet/sf/scuba/data/Country;->fromAlpha2(Ljava/lang/String;)Lnet/sf/scuba/data/Country;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal country code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lnet/sf/scuba/data/Country;
    .locals 10

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lnet/sf/scuba/data/Country;>;"
    sget-object v1, Lnet/sf/scuba/data/Country;->SUB_CLASSES:[Ljava/lang/Class;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 95
    .local v5, "subClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Lnet/sf/scuba/data/Country;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 96
    goto :goto_1

    .line 99
    :cond_0
    :try_start_0
    const-string/jumbo v6, "values"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 100
    .local v6, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lnet/sf/scuba/data/Country;

    check-cast v7, [Lnet/sf/scuba/data/Country;

    .line 101
    .local v7, "subClassValues":[Lnet/sf/scuba/data/Country;
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    nop

    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "subClassValues":[Lnet/sf/scuba/data/Country;
    goto :goto_1

    .line 102
    :catch_0
    move-exception v6

    .line 103
    .local v6, "e":Ljava/lang/Exception;
    sget-object v7, Lnet/sf/scuba/data/Country;->LOGGER:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v9, "Exception"

    invoke-virtual {v7, v8, v9, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .end local v5    # "subClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lnet/sf/scuba/data/Country;

    .line 107
    .local v1, "values":[Lnet/sf/scuba/data/Country;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 108
    return-object v1
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNationality()Ljava/lang/String;
.end method

.method public abstract toAlpha2Code()Ljava/lang/String;
.end method

.method public abstract toAlpha3Code()Ljava/lang/String;
.end method

.method public abstract valueOf()I
.end method
