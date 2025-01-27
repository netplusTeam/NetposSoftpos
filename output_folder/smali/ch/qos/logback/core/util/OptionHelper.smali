.class public Lch/qos/logback/core/util/OptionHelper;
.super Ljava/lang/Object;
.source "OptionHelper.java"


# static fields
.field static final DELIM_DEFAULT:Ljava/lang/String; = ":-"

.field static final DELIM_DEFAULT_LEN:I = 0x2

.field static final DELIM_START:Ljava/lang/String; = "${"

.field static final DELIM_START_LEN:I = 0x2

.field static final DELIM_STOP:C = '}'

.field static final DELIM_STOP_LEN:I = 0x1

.field static final _IS_UNDEFINED:Ljava/lang/String; = "_IS_UNDEFINED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractDefaultReplacement(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .line 222
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 223
    .local v0, "result":[Ljava/lang/String;
    if-nez p0, :cond_0

    .line 224
    return-object v0

    .line 226
    :cond_0
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 227
    const-string v2, ":-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 228
    .local v2, "d":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 229
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 230
    const/4 v1, 0x1

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 232
    :cond_1
    return-object v0
.end method

.method public static getEnv(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 162
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getSystemProperties()Ljava/util/Properties;
    .locals 2

    .line 207
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    return-object v1
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 177
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .line 148
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/SecurityException;
    return-object p1
.end method

.method public static instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;)Ljava/lang/Object;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p2, "context"    # Lch/qos/logback/core/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Lch/qos/logback/core/Context;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/util/IncompatibleClassException;,
            Lch/qos/logback/core/util/DynamicClassLoadingException;
        }
    .end annotation

    .line 33
    .local p1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lch/qos/logback/core/util/Loader;->getClassLoaderOfObject(Ljava/lang/Object;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 34
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {p0, p1, v0}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/util/IncompatibleClassException;,
            Lch/qos/logback/core/util/DynamicClassLoadingException;
        }
    .end annotation

    .line 45
    .local p1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassNameAndParameter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static instantiateByClassNameAndParameter(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p2, "context"    # Lch/qos/logback/core/Context;
    .param p4, "param"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Lch/qos/logback/core/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/util/IncompatibleClassException;,
            Lch/qos/logback/core/util/DynamicClassLoadingException;
        }
    .end annotation

    .line 39
    .local p1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lch/qos/logback/core/util/Loader;->getClassLoaderOfObject(Ljava/lang/Object;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 40
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {p0, p1, v0, p3, p4}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassNameAndParameter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static instantiateByClassNameAndParameter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p4, "parameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/util/IncompatibleClassException;,
            Lch/qos/logback/core/util/DynamicClassLoadingException;
        }
    .end annotation

    .line 51
    .local p1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_2

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    if-nez p3, :cond_0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 63
    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 64
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 58
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    new-instance v1, Lch/qos/logback/core/util/IncompatibleClassException;

    invoke-direct {v1, p1, v0}, Lch/qos/logback/core/util/IncompatibleClassException;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .end local p0    # "className":Ljava/lang/String;
    .end local p1    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "classLoader":Ljava/lang/ClassLoader;
    .end local p3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p4    # "parameter":Ljava/lang/Object;
    throw v1
    :try_end_0
    .catch Lch/qos/logback/core/util/IncompatibleClassException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v0    # "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "className":Ljava/lang/String;
    .restart local p1    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p4    # "parameter":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    .line 69
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lch/qos/logback/core/util/DynamicClassLoadingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to instantiate type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lch/qos/logback/core/util/DynamicClassLoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 66
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "ice":Lch/qos/logback/core/util/IncompatibleClassException;
    throw v0

    .line 52
    .end local v0    # "ice":Lch/qos/logback/core/util/IncompatibleClassException;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 261
    if-eqz p0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static propertyLookup(Ljava/lang/String;Lch/qos/logback/core/spi/PropertyContainer;Lch/qos/logback/core/spi/PropertyContainer;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "pc1"    # Lch/qos/logback/core/spi/PropertyContainer;
    .param p2, "pc2"    # Lch/qos/logback/core/spi/PropertyContainer;

    .line 119
    const/4 v0, 0x0

    .line 121
    .local v0, "value":Ljava/lang/String;
    invoke-interface {p1, p0}, Lch/qos/logback/core/spi/PropertyContainer;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 125
    invoke-interface {p2, p0}, Lch/qos/logback/core/spi/PropertyContainer;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_0
    if-nez v0, :cond_1

    .line 129
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lch/qos/logback/core/util/OptionHelper;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_1
    if-nez v0, :cond_2

    .line 132
    invoke-static {p0}, Lch/qos/logback/core/util/OptionHelper;->getEnv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_2
    return-object v0
.end method

.method public static setSystemProperties(Lch/qos/logback/core/spi/ContextAware;Ljava/util/Properties;)V
    .locals 4
    .param p0, "contextAware"    # Lch/qos/logback/core/spi/ContextAware;
    .param p1, "props"    # Ljava/util/Properties;

    .line 184
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 185
    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 186
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "value":Ljava/lang/String;
    invoke-static {p0, v2, v3}, Lch/qos/logback/core/util/OptionHelper;->setSystemProperty(Lch/qos/logback/core/spi/ContextAware;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 189
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public static setSystemProperty(Lch/qos/logback/core/spi/ContextAware;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "contextAware"    # Lch/qos/logback/core/spi/ContextAware;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 193
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set system property ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Lch/qos/logback/core/spi/ContextAware;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_0
    return-void
.end method

.method public static substVars(Ljava/lang/String;Lch/qos/logback/core/spi/PropertyContainer;)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;
    .param p1, "pc1"    # Lch/qos/logback/core/spi/PropertyContainer;

    .line 104
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lch/qos/logback/core/util/OptionHelper;->substVars(Ljava/lang/String;Lch/qos/logback/core/spi/PropertyContainer;Lch/qos/logback/core/spi/PropertyContainer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substVars(Ljava/lang/String;Lch/qos/logback/core/spi/PropertyContainer;Lch/qos/logback/core/spi/PropertyContainer;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pc0"    # Lch/qos/logback/core/spi/PropertyContainer;
    .param p2, "pc1"    # Lch/qos/logback/core/spi/PropertyContainer;

    .line 112
    :try_start_0
    invoke-static {p0, p1, p2}, Lch/qos/logback/core/subst/NodeToStringTransformer;->substituteVariable(Ljava/lang/String;Lch/qos/logback/core/spi/PropertyContainer;Lch/qos/logback/core/spi/PropertyContainer;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lch/qos/logback/core/spi/ScanException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Lch/qos/logback/core/spi/ScanException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse input ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "dEfault"    # Z

    .line 243
    if-nez p0, :cond_0

    .line 244
    return p1

    .line 247
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "trimmedVal":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    const/4 v1, 0x1

    return v1

    .line 253
    :cond_1
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    const/4 v1, 0x0

    return v1

    .line 257
    :cond_2
    return p1
.end method
