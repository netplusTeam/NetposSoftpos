.class public Lch/qos/logback/core/joran/util/PropertySetter;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "PropertySetter.java"


# instance fields
.field protected final beanDescription:Lch/qos/logback/core/joran/util/beans/BeanDescription;

.field protected final obj:Ljava/lang/Object;

.field protected final objClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;Ljava/lang/Object;)V
    .locals 1
    .param p1, "beanDescriptionCache"    # Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 65
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 66
    iput-object p2, p0, Lch/qos/logback/core/joran/util/PropertySetter;->obj:Ljava/lang/Object;

    .line 67
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/joran/util/PropertySetter;->objClass:Ljava/lang/Class;

    .line 68
    invoke-virtual {p1, v0}, Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;->getBeanDescription(Ljava/lang/Class;)Lch/qos/logback/core/joran/util/beans/BeanDescription;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/joran/util/PropertySetter;->beanDescription:Lch/qos/logback/core/joran/util/beans/BeanDescription;

    .line 69
    return-void
.end method

.method private capitalizeFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private computeRawAggregationType(Ljava/lang/reflect/Method;)Lch/qos/logback/core/util/AggregationType;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 190
    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->getParameterClassForMethod(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v0

    .line 191
    .local v0, "parameterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 192
    sget-object v1, Lch/qos/logback/core/util/AggregationType;->NOT_FOUND:Lch/qos/logback/core/util/AggregationType;

    return-object v1

    .line 194
    :cond_0
    invoke-static {v0}, Lch/qos/logback/core/joran/util/StringToObjectConverter;->canBeBuiltFromSimpleString(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    sget-object v1, Lch/qos/logback/core/util/AggregationType;->AS_BASIC_PROPERTY:Lch/qos/logback/core/util/AggregationType;

    return-object v1

    .line 197
    :cond_1
    sget-object v1, Lch/qos/logback/core/util/AggregationType;->AS_COMPLEX_PROPERTY:Lch/qos/logback/core/util/AggregationType;

    return-object v1
.end method

.method private findAdderMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 168
    invoke-static {p1}, Lch/qos/logback/core/joran/util/beans/BeanUtil;->toLowerCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "propertyName":Ljava/lang/String;
    iget-object v1, p0, Lch/qos/logback/core/joran/util/PropertySetter;->beanDescription:Lch/qos/logback/core/joran/util/beans/BeanDescription;

    invoke-virtual {v1, v0}, Lch/qos/logback/core/joran/util/beans/BeanDescription;->getAdder(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    return-object v1
.end method

.method private findSetterMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 173
    invoke-static {p1}, Lch/qos/logback/core/joran/util/beans/BeanUtil;->toLowerCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "propertyName":Ljava/lang/String;
    iget-object v1, p0, Lch/qos/logback/core/joran/util/PropertySetter;->beanDescription:Lch/qos/logback/core/joran/util/beans/BeanDescription;

    invoke-virtual {v1, v0}, Lch/qos/logback/core/joran/util/beans/BeanDescription;->getSetter(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    return-object v1
.end method

.method private getParameterClassForMethod(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 4
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 178
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 179
    return-object v0

    .line 181
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 182
    .local v1, "classArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 183
    return-object v0

    .line 185
    :cond_1
    const/4 v0, 0x0

    aget-object v0, v1, v0

    return-object v0
.end method

.method private isSanityCheckSuccessful(Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p4, "complexProperty"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 309
    .local p3, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 310
    .local v0, "ccc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v1, p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong number of parameters in setter method for property ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/joran/util/PropertySetter;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/util/PropertySetter;->addError(Ljava/lang/String;)V

    .line 313
    return v3

    .line 316
    :cond_0
    aget-object v1, p3, v3

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" object is not assignable to a \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p3, v3

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" variable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/util/PropertySetter;->addError(Ljava/lang/String;)V

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The class \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p3, v3

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" was loaded by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/util/PropertySetter;->addError(Ljava/lang/String;)V

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p3, v3

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] whereas object of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/util/PropertySetter;->addError(Ljava/lang/String;)V

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" was loaded by ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/util/PropertySetter;->addError(Ljava/lang/String;)V

    .line 321
    return v3

    .line 324
    :cond_1
    return v2
.end method

.method private isUnequivocallyInstantiable(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 209
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 210
    return v1

    .line 217
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 219
    const/4 v1, 0x1

    return v1

    .line 221
    :cond_1
    return v1

    .line 225
    .end local v0    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/IllegalAccessException;
    return v1

    .line 223
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/InstantiationException;
    return v1
.end method

.method private setProperty(Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "setter"    # Ljava/lang/reflect/Method;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/util/PropertySetterException;
        }
    .end annotation

    .line 117
    const-string v0, "Conversion to type ["

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 122
    .local v1, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    :try_start_0
    aget-object v3, v1, v2

    invoke-static {p0, p3, v3}, Lch/qos/logback/core/joran/util/StringToObjectConverter;->convertArg(Lch/qos/logback/core/spi/ContextAware;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .local v3, "arg":Ljava/lang/Object;
    nop

    .line 127
    if-eqz v3, :cond_0

    .line 131
    :try_start_1
    iget-object v0, p0, Lch/qos/logback/core/joran/util/PropertySetter;->obj:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-virtual {p1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    nop

    .line 135
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Lch/qos/logback/core/util/PropertySetterException;

    invoke-direct {v2, v0}, Lch/qos/logback/core/util/PropertySetterException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 128
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    new-instance v4, Lch/qos/logback/core/util/PropertySetterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] failed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lch/qos/logback/core/util/PropertySetterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 123
    .end local v3    # "arg":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    .line 124
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Lch/qos/logback/core/util/PropertySetterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] failed. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lch/qos/logback/core/util/PropertySetterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public addBasicProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "strValue"    # Ljava/lang/String;

    .line 259
    if-nez p2, :cond_0

    .line 260
    return-void

    .line 263
    :cond_0
    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->capitalizeFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 264
    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->findAdderMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 266
    .local v0, "adderMethod":Ljava/lang/reflect/Method;
    if-nez v0, :cond_1

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No adder for property ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/util/PropertySetter;->addError(Ljava/lang/String;)V

    .line 268
    return-void

    .line 271
    :cond_1
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 272
    .local v1, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, v0, v1, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->isSanityCheckSuccessful(Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 276
    const/4 v2, 0x0

    :try_start_0
    aget-object v3, v1, v2

    invoke-static {p0, p2, v3}, Lch/qos/logback/core/joran/util/StringToObjectConverter;->convertArg(Lch/qos/logback/core/spi/ContextAware;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    .local v2, "arg":Ljava/lang/Object;
    nop

    .line 281
    if-eqz v2, :cond_2

    .line 282
    invoke-virtual {p0, v0, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->invokeMethodWithSingleParameterOnThisObject(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 284
    :cond_2
    return-void

    .line 277
    .end local v2    # "arg":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    .line 278
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conversion to type ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v2, v1, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] failed. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lch/qos/logback/core/joran/util/PropertySetter;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    return-void
.end method

.method public addComplexProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "complexProperty"    # Ljava/lang/Object;

    .line 235
    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->findAdderMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 237
    .local v0, "adderMethod":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 239
    .local v1, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, v0, v1, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->isSanityCheckSuccessful(Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    return-void

    .line 242
    :cond_0
    invoke-virtual {p0, v0, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->invokeMethodWithSingleParameterOnThisObject(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 243
    .end local v1    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_0

    .line 244
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find method [add"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] in class ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/joran/util/PropertySetter;->objClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/util/PropertySetter;->addError(Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void
.end method

.method public computeAggregationType(Ljava/lang/String;)Lch/qos/logback/core/util/AggregationType;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 138
    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->capitalizeFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "cName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lch/qos/logback/core/joran/util/PropertySetter;->findAdderMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 142
    .local v1, "addMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 143
    invoke-direct {p0, v1}, Lch/qos/logback/core/joran/util/PropertySetter;->computeRawAggregationType(Ljava/lang/reflect/Method;)Lch/qos/logback/core/util/AggregationType;

    move-result-object v2

    .line 144
    .local v2, "type":Lch/qos/logback/core/util/AggregationType;
    sget-object v3, Lch/qos/logback/core/joran/util/PropertySetter$1;->$SwitchMap$ch$qos$logback$core$util$AggregationType:[I

    invoke-virtual {v2}, Lch/qos/logback/core/util/AggregationType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 154
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected AggregationType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/core/joran/util/PropertySetter;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :pswitch_1
    sget-object v3, Lch/qos/logback/core/util/AggregationType;->AS_COMPLEX_PROPERTY_COLLECTION:Lch/qos/logback/core/util/AggregationType;

    return-object v3

    .line 148
    :pswitch_2
    sget-object v3, Lch/qos/logback/core/util/AggregationType;->AS_BASIC_PROPERTY_COLLECTION:Lch/qos/logback/core/util/AggregationType;

    return-object v3

    .line 146
    :pswitch_3
    sget-object v3, Lch/qos/logback/core/util/AggregationType;->NOT_FOUND:Lch/qos/logback/core/util/AggregationType;

    return-object v3

    .line 158
    .end local v2    # "type":Lch/qos/logback/core/util/AggregationType;
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->findSetterMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 159
    .local v2, "setter":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_1

    .line 160
    invoke-direct {p0, v2}, Lch/qos/logback/core/joran/util/PropertySetter;->computeRawAggregationType(Ljava/lang/reflect/Method;)Lch/qos/logback/core/util/AggregationType;

    move-result-object v3

    return-object v3

    .line 163
    :cond_1
    sget-object v3, Lch/qos/logback/core/util/AggregationType;->NOT_FOUND:Lch/qos/logback/core/util/AggregationType;

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method getAnnotation(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/annotation/Annotation;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "relevantMethod"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Method;",
            ")TT;"
        }
    .end annotation

    .line 349
    .local p2, "annonationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p3, :cond_0

    .line 350
    invoke-virtual {p3, p2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0

    .line 352
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getByConcreteType(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "relevantMethod"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 366
    invoke-direct {p0, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->getParameterClassForMethod(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v0

    .line 367
    .local v0, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 368
    return-object v1

    .line 371
    :cond_0
    invoke-direct {p0, v0}, Lch/qos/logback/core/joran/util/PropertySetter;->isUnequivocallyInstantiable(Ljava/lang/Class;)Z

    move-result v2

    .line 372
    .local v2, "isUnequivocallyInstantiable":Z
    if-eqz v2, :cond_1

    .line 373
    return-object v0

    .line 375
    :cond_1
    return-object v1
.end method

.method public getClassNameViaImplicitRules(Ljava/lang/String;Lch/qos/logback/core/util/AggregationType;Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;)Ljava/lang/Class;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "aggregationType"    # Lch/qos/logback/core/util/AggregationType;
    .param p3, "registry"    # Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lch/qos/logback/core/util/AggregationType;",
            "Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lch/qos/logback/core/joran/util/PropertySetter;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->findDefaultComponentType(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 383
    .local v0, "registryResult":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 384
    return-object v0

    .line 387
    :cond_0
    invoke-virtual {p0, p1, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->getRelevantMethod(Ljava/lang/String;Lch/qos/logback/core/util/AggregationType;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 388
    .local v1, "relevantMethod":Ljava/lang/reflect/Method;
    if-nez v1, :cond_1

    .line 389
    const/4 v2, 0x0

    return-object v2

    .line 391
    :cond_1
    invoke-virtual {p0, p1, v1}, Lch/qos/logback/core/joran/util/PropertySetter;->getDefaultClassNameByAnnonation(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v2

    .line 392
    .local v2, "byAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_2

    .line 393
    return-object v2

    .line 395
    :cond_2
    invoke-virtual {p0, p1, v1}, Lch/qos/logback/core/joran/util/PropertySetter;->getByConcreteType(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v3

    return-object v3
.end method

.method getDefaultClassNameByAnnonation(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "relevantMethod"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 357
    const-class v0, Lch/qos/logback/core/joran/spi/DefaultClass;

    invoke-virtual {p0, p1, v0, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->getAnnotation(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/joran/spi/DefaultClass;

    .line 358
    .local v0, "defaultClassAnnon":Lch/qos/logback/core/joran/spi/DefaultClass;
    if-eqz v0, :cond_0

    .line 359
    invoke-interface {v0}, Lch/qos/logback/core/joran/spi/DefaultClass;->value()Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 361
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getObj()Ljava/lang/Object;
    .locals 1

    .line 332
    iget-object v0, p0, Lch/qos/logback/core/joran/util/PropertySetter;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public getObjClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lch/qos/logback/core/joran/util/PropertySetter;->objClass:Ljava/lang/Class;

    return-object v0
.end method

.method getRelevantMethod(Ljava/lang/String;Lch/qos/logback/core/util/AggregationType;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "aggregationType"    # Lch/qos/logback/core/util/AggregationType;

    .line 337
    sget-object v0, Lch/qos/logback/core/util/AggregationType;->AS_COMPLEX_PROPERTY_COLLECTION:Lch/qos/logback/core/util/AggregationType;

    if-ne p2, v0, :cond_0

    .line 338
    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->findAdderMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "relevantMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 339
    .end local v0    # "relevantMethod":Ljava/lang/reflect/Method;
    :cond_0
    sget-object v0, Lch/qos/logback/core/util/AggregationType;->AS_COMPLEX_PROPERTY:Lch/qos/logback/core/util/AggregationType;

    if-ne p2, v0, :cond_1

    .line 340
    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->findSetterMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 344
    .restart local v0    # "relevantMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object v0

    .line 342
    .end local v0    # "relevantMethod":Ljava/lang/reflect/Method;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not allowed here"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method invokeMethodWithSingleParameterOnThisObject(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "parameter"    # Ljava/lang/Object;

    .line 249
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 251
    .local v0, "ccc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v1, p0, Lch/qos/logback/core/joran/util/PropertySetter;->obj:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    goto :goto_0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not invoke method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/joran/util/PropertySetter;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with parameter of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lch/qos/logback/core/joran/util/PropertySetter;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setComplexProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "complexProperty"    # Ljava/lang/Object;

    .line 287
    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->findSetterMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 289
    .local v0, "setter":Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not setter method for property ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/joran/util/PropertySetter;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/util/PropertySetter;->addWarn(Ljava/lang/String;)V

    .line 292
    return-void

    .line 295
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 297
    .local v1, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, v0, v1, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->isSanityCheckSuccessful(Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 298
    return-void

    .line 301
    :cond_1
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->invokeMethodWithSingleParameterOnThisObject(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    goto :goto_0

    .line 303
    :catch_0
    move-exception v2

    .line 304
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not set component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lch/qos/logback/core/joran/util/PropertySetter;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for parent component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lch/qos/logback/core/joran/util/PropertySetter;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lch/qos/logback/core/joran/util/PropertySetter;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 90
    if-nez p2, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/util/PropertySetter;->findSetterMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 94
    .local v0, "setter":Ljava/lang/reflect/Method;
    if-nez v0, :cond_1

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No setter for property ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/joran/util/PropertySetter;->objClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/util/PropertySetter;->addWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lch/qos/logback/core/joran/util/PropertySetter;->setProperty(Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lch/qos/logback/core/util/PropertySetterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "ex":Lch/qos/logback/core/util/PropertySetterException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set property ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to value \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lch/qos/logback/core/joran/util/PropertySetter;->addWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .end local v1    # "ex":Lch/qos/logback/core/util/PropertySetterException;
    :goto_0
    return-void
.end method
