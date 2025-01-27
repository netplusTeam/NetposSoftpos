.class public Lorg/jpos/iso/ISOCurrency;
.super Ljava/lang/Object;
.source "ISOCurrency.java"


# static fields
.field private static final currencies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jpos/iso/Currency;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jpos/iso/ISOCurrency;->currencies:Ljava/util/Map;

    .line 47
    invoke-static {}, Lorg/jpos/iso/ISOCurrency;->addJavaCurrencies()V

    .line 48
    const-string v0, "org/jpos/iso/ISOCurrency.properties"

    invoke-static {v0}, Lorg/jpos/iso/ISOCurrency;->loadPropertiesFromClasspath(Ljava/lang/String;)V

    .line 49
    const-string v0, "META-INF/org/jpos/config/ISOCurrency.properties"

    invoke-static {v0}, Lorg/jpos/iso/ISOCurrency;->loadPropertiesFromClasspath(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static addBundle(Ljava/lang/String;)V
    .locals 1
    .param p0, "bundleName"    # Ljava/lang/String;

    .line 133
    invoke-static {p0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 134
    .local v0, "r":Ljava/util/ResourceBundle;
    invoke-static {v0}, Lorg/jpos/iso/ISOCurrency;->addBundle(Ljava/util/ResourceBundle;)V

    .line 135
    return-void
.end method

.method private static addBundle(Ljava/util/ResourceBundle;)V
    .locals 5
    .param p0, "r"    # Ljava/util/ResourceBundle;

    .line 236
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 237
    .local v0, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 240
    .local v1, "alphaCode":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "tmp":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 242
    .local v3, "isoCode":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 243
    .local v4, "numDecimals":I
    invoke-static {v1, v3, v4}, Lorg/jpos/iso/ISOCurrency;->addCurrency(Ljava/lang/String;Ljava/lang/String;I)V

    .line 244
    .end local v1    # "alphaCode":Ljava/lang/String;
    .end local v2    # "tmp":[Ljava/lang/String;
    .end local v3    # "isoCode":Ljava/lang/String;
    .end local v4    # "numDecimals":I
    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method

.method private static addCurrency(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "alphaCode"    # Ljava/lang/String;
    .param p1, "isoCode"    # Ljava/lang/String;
    .param p2, "numDecimals"    # I

    .line 214
    sget-object v0, Lorg/jpos/iso/ISOCurrency;->currencies:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_1
    new-instance v1, Lorg/jpos/iso/Currency;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, p0, v2, p2}, Lorg/jpos/iso/Currency;-><init>(Ljava/lang/String;II)V

    .line 220
    .local v1, "ccy":Lorg/jpos/iso/Currency;
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-void
.end method

.method private static addJavaCurrencies()V
    .locals 6

    .line 54
    invoke-static {}, Ljava/util/Currency;->getAvailableCurrencies()Ljava/util/Set;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jpos/iso/ISOCurrency$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/jpos/iso/ISOCurrency$$ExternalSyntheticLambda0;-><init>()V

    .line 56
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 57
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 58
    .local v0, "currencies":Ljava/util/List;, "Ljava/util/List<Ljava/util/Currency;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Currency;

    .line 62
    .local v2, "sc":Ljava/util/Currency;
    :try_start_0
    invoke-virtual {v2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-virtual {v2}, Ljava/util/Currency;->getNumericCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-virtual {v2}, Ljava/util/Currency;->getDefaultFractionDigits()I

    move-result v5

    .line 62
    invoke-static {v3, v4, v5}, Lorg/jpos/iso/ISOCurrency;->addCurrency(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_1

    .line 66
    :catch_0
    move-exception v3

    .line 69
    .end local v2    # "sc":Ljava/util/Currency;
    :goto_1
    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method public static convertFromIsoMsg(Ljava/lang/String;Ljava/lang/String;)D
    .locals 3
    .param p0, "isoamount"    # Ljava/lang/String;
    .param p1, "currency"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 113
    invoke-static {p1}, Lorg/jpos/iso/ISOCurrency;->findCurrency(Ljava/lang/String;)Lorg/jpos/iso/Currency;

    move-result-object v0

    .line 114
    .local v0, "c":Lorg/jpos/iso/Currency;
    invoke-virtual {v0, p0}, Lorg/jpos/iso/Currency;->parseAmountFromISOMsg(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1
.end method

.method public static convertToIsoMsg(DLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "amount"    # D
    .param p2, "currency"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 148
    invoke-static {p2}, Lorg/jpos/iso/ISOCurrency;->findCurrency(Ljava/lang/String;)Lorg/jpos/iso/Currency;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/jpos/iso/Currency;->formatAmountForISOMsg(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decomposeComposedCurrency(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 4
    .param p0, "incurr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 153
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "strings":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 158
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    return-object v1

    .line 156
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static findCurrency(Ljava/lang/String;)Lorg/jpos/iso/Currency;
    .locals 4
    .param p0, "currency"    # Ljava/lang/String;

    .line 226
    sget-object v0, Lorg/jpos/iso/ISOCurrency;->currencies:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/Currency;

    .line 227
    .local v0, "c":Lorg/jpos/iso/Currency;
    if-eqz v0, :cond_0

    .line 231
    return-object v0

    .line 229
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Currency with key \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' was not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getCurrency(I)Lorg/jpos/iso/Currency;
    .locals 2
    .param p0, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 176
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "isoCode":Ljava/lang/String;
    invoke-static {v0}, Lorg/jpos/iso/ISOCurrency;->findCurrency(Ljava/lang/String;)Lorg/jpos/iso/Currency;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrency(Ljava/lang/String;)Lorg/jpos/iso/Currency;
    .locals 2
    .param p0, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 182
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "isoCode":Ljava/lang/String;
    invoke-static {v0}, Lorg/jpos/iso/ISOCurrency;->findCurrency(Ljava/lang/String;)Lorg/jpos/iso/Currency;

    move-result-object v1

    return-object v1
.end method

.method public static getIsoCodeFromAlphaCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "alphacode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 165
    :try_start_0
    invoke-static {p0}, Lorg/jpos/iso/ISOCurrency;->findCurrency(Ljava/lang/String;)Lorg/jpos/iso/Currency;

    move-result-object v0

    .line 166
    .local v0, "c":Lorg/jpos/iso/Currency;
    invoke-virtual {v0}, Lorg/jpos/iso/Currency;->getIsoCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 168
    .end local v0    # "c":Lorg/jpos/iso/Currency;
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Lorg/jpos/iso/ISOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed getIsoCodeFromAlphaCode/ zeropad failed?"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static loadPropertiesFromClasspath(Ljava/lang/String;)V
    .locals 3
    .param p0, "base"    # Ljava/lang/String;

    .line 75
    invoke-static {p0}, Lorg/jpos/iso/ISOCurrency;->loadResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 78
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 80
    :try_start_0
    new-instance v1, Ljava/util/PropertyResourceBundle;

    invoke-direct {v1, v0}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/jpos/iso/ISOCurrency;->addBundle(Ljava/util/ResourceBundle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 88
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 92
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v2

    .line 98
    :cond_0
    :goto_0
    throw v1

    .line 83
    :catch_1
    move-exception v1

    .line 88
    if-eqz v0, :cond_2

    .line 92
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 88
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 96
    :goto_2
    goto :goto_3

    .line 94
    :catch_2
    move-exception v1

    goto :goto_2

    .line 99
    :cond_2
    :goto_3
    return-void
.end method

.method private static loadResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, "in":Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 191
    .local v1, "contextClassLoader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 195
    :cond_0
    if-nez v0, :cond_1

    .line 197
    const-class v2, Lorg/jpos/iso/ISOCurrency;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 199
    :cond_1
    return-object v0
.end method

.method public static parseFromISO87String(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "isoamount"    # Ljava/lang/String;
    .param p1, "currency"    # Ljava/lang/String;

    .line 127
    invoke-static {p1}, Lorg/jpos/iso/ISOCurrency;->findCurrency(Ljava/lang/String;)Lorg/jpos/iso/Currency;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/iso/Currency;->getDecimals()I

    move-result v0

    .line 128
    .local v0, "decimals":I
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public static toISO87String(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "amount"    # Ljava/math/BigDecimal;
    .param p1, "currency"    # Ljava/lang/String;

    .line 119
    :try_start_0
    invoke-static {p1}, Lorg/jpos/iso/ISOCurrency;->findCurrency(Ljava/lang/String;)Lorg/jpos/iso/Currency;

    move-result-object v0

    .line 120
    .local v0, "c":Lorg/jpos/iso/Currency;
    invoke-virtual {v0}, Lorg/jpos/iso/Currency;->getDecimals()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 122
    .end local v0    # "c":Lorg/jpos/iso/Currency;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Lorg/jpos/iso/ISOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to convert amount"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
