.class public Lcom/sleepycat/util/ConfigBeanInfoBase;
.super Ljava/beans/SimpleBeanInfo;
.source "ConfigBeanInfoBase.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final defaultEventIndex:I = -0x1

.field private static final defaultPropertyIndex:I = -0x1

.field protected static getterAndSetterMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static iconColor16:Ljava/awt/Image;

.field private static iconColor32:Ljava/awt/Image;

.field private static iconMono16:Ljava/awt/Image;

.field private static iconMono32:Ljava/awt/Image;

.field private static iconNameC16:Ljava/lang/String;

.field private static iconNameC32:Ljava/lang/String;

.field private static iconNameM16:Ljava/lang/String;

.field private static iconNameM32:Ljava/lang/String;

.field protected static ignoreMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static propertiesName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    nop

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconColor16:Ljava/awt/Image;

    .line 57
    sput-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconColor32:Ljava/awt/Image;

    .line 58
    sput-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconMono16:Ljava/awt/Image;

    .line 59
    sput-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconMono32:Ljava/awt/Image;

    .line 60
    sput-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconNameC16:Ljava/lang/String;

    .line 61
    sput-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconNameC32:Ljava/lang/String;

    .line 62
    sput-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconNameM16:Ljava/lang/String;

    .line 63
    sput-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconNameM32:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->propertiesName:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->getterAndSetterMethods:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->ignoreMethods:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/beans/SimpleBeanInfo;-><init>()V

    return-void
.end method

.method protected static getBdescriptor(Ljava/lang/Class;)Ljava/beans/BeanDescriptor;
    .locals 2
    .param p0, "cls"    # Ljava/lang/Class;

    .line 153
    new-instance v0, Ljava/beans/BeanDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/beans/BeanDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 154
    .local v0, "beanDescriptor":Ljava/beans/BeanDescriptor;
    return-object v0
.end method

.method protected static getPdescriptor(Ljava/lang/Class;)[Ljava/beans/PropertyDescriptor;
    .locals 9
    .param p0, "cls"    # Ljava/lang/Class;

    .line 136
    invoke-static {p0}, Lcom/sleepycat/util/ConfigBeanInfoBase;->getPropertiesInfo(Ljava/lang/Class;)V

    .line 137
    sget-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->propertiesName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 138
    .local v0, "propertyNum":I
    mul-int/lit8 v1, v0, 0x2

    sget-object v2, Lcom/sleepycat/util/ConfigBeanInfoBase;->getterAndSetterMethods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 139
    new-array v1, v0, [Ljava/beans/PropertyDescriptor;

    .line 141
    .local v1, "properties":[Ljava/beans/PropertyDescriptor;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 142
    :try_start_0
    new-instance v4, Ljava/beans/PropertyDescriptor;

    sget-object v5, Lcom/sleepycat/util/ConfigBeanInfoBase;->propertiesName:Ljava/util/ArrayList;

    .line 143
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lcom/sleepycat/util/ConfigBeanInfoBase;->getterAndSetterMethods:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lcom/sleepycat/util/ConfigBeanInfoBase;->getterAndSetterMethods:Ljava/util/ArrayList;

    add-int/lit8 v8, v3, 0x1

    .line 144
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v4, v5, p0, v6, v7}, Ljava/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v2
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 146
    .end local v2    # "i":I
    .end local v3    # "j":I
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Ljava/beans/IntrospectionException;
    invoke-virtual {v2}, Ljava/beans/IntrospectionException;->printStackTrace()V

    goto :goto_1

    .line 148
    .end local v2    # "e":Ljava/beans/IntrospectionException;
    :cond_0
    nop

    .line 149
    :goto_1
    return-object v1

    .line 138
    .end local v1    # "properties":[Ljava/beans/PropertyDescriptor;
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method protected static getPropertiesInfo(Ljava/lang/Class;)V
    .locals 12
    .param p0, "cls"    # Ljava/lang/Class;

    .line 79
    const-string v0, "get"

    sget-object v1, Lcom/sleepycat/util/ConfigBeanInfoBase;->propertiesName:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 80
    sget-object v1, Lcom/sleepycat/util/ConfigBeanInfoBase;->getterAndSetterMethods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 84
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v1, "allMethodNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 86
    .local v2, "methods":[Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 87
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 90
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 91
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "subName":Ljava/lang/String;
    const-string v8, "set"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 95
    invoke-static {v4}, Lcom/sleepycat/util/ConfigBeanInfoBase;->isIgnoreMethods(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 96
    goto :goto_3

    .line 98
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    .local v5, "propertyName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 101
    .local v8, "getterMethod":Ljava/lang/reflect/Method;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Class;

    invoke-virtual {p0, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v9

    .line 104
    goto :goto_2

    .line 102
    :catch_0
    move-exception v9

    .line 103
    .local v9, "e":Ljava/lang/NoSuchMethodException;
    const/4 v8, 0x0

    .line 105
    .end local v9    # "e":Ljava/lang/NoSuchMethodException;
    :goto_2
    if-eqz v8, :cond_2

    .line 106
    :try_start_2
    sget-object v9, Lcom/sleepycat/util/ConfigBeanInfoBase;->getterAndSetterMethods:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v9, Lcom/sleepycat/util/ConfigBeanInfoBase;->getterAndSetterMethods:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Void"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v9, Lcom/sleepycat/util/ConfigBeanInfoBase;->propertiesName:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    const/4 v11, 0x1

    invoke-virtual {v5, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 117
    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 89
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v7    # "subName":Ljava/lang/String;
    .end local v8    # "getterMethod":Ljava/lang/reflect/Method;
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 123
    .end local v1    # "allMethodNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "methods":[Ljava/lang/reflect/Method;
    .end local v3    # "i":I
    :cond_3
    goto :goto_4

    .line 121
    :catch_1
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 124
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_4
    return-void
.end method

.method private static isIgnoreMethods(Ljava/lang/String;)Z
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/sleepycat/util/ConfigBeanInfoBase;->ignoreMethods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 128
    sget-object v1, Lcom/sleepycat/util/ConfigBeanInfoBase;->ignoreMethods:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const/4 v1, 0x1

    return v1

    .line 127
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getBeanDescriptor(Ljava/lang/Class;)Ljava/beans/BeanDescriptor;
    .locals 1
    .param p1, "cls"    # Ljava/lang/Class;

    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultEventIndex()I
    .locals 1

    .line 220
    const/4 v0, -0x1

    return v0
.end method

.method public getDefaultPropertyIndex()I
    .locals 1

    .line 209
    const/4 v0, -0x1

    return v0
.end method

.method public getEventSetDescriptors()[Ljava/beans/EventSetDescriptor;
    .locals 1

    .line 196
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/beans/EventSetDescriptor;

    .line 197
    .local v0, "eventSets":[Ljava/beans/EventSetDescriptor;
    return-object v0
.end method

.method public getIcon(I)Ljava/awt/Image;
    .locals 2
    .param p1, "iconKind"    # I

    .line 245
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 287
    return-object v0

    .line 277
    :pswitch_0
    sget-object v1, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconNameM32:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 278
    return-object v0

    .line 280
    :cond_0
    sget-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconMono32:Ljava/awt/Image;

    if-nez v0, :cond_1

    .line 281
    invoke-virtual {p0, v1}, Lcom/sleepycat/util/ConfigBeanInfoBase;->loadImage(Ljava/lang/String;)Ljava/awt/Image;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconMono32:Ljava/awt/Image;

    .line 283
    :cond_1
    sget-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconMono32:Ljava/awt/Image;

    return-object v0

    .line 267
    :pswitch_1
    sget-object v1, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconNameM16:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 268
    return-object v0

    .line 270
    :cond_2
    sget-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconMono16:Ljava/awt/Image;

    if-nez v0, :cond_3

    .line 271
    invoke-virtual {p0, v1}, Lcom/sleepycat/util/ConfigBeanInfoBase;->loadImage(Ljava/lang/String;)Ljava/awt/Image;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconMono16:Ljava/awt/Image;

    .line 273
    :cond_3
    sget-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconMono16:Ljava/awt/Image;

    return-object v0

    .line 257
    :pswitch_2
    sget-object v1, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconNameC32:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 258
    return-object v0

    .line 260
    :cond_4
    sget-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconColor32:Ljava/awt/Image;

    if-nez v0, :cond_5

    .line 261
    invoke-virtual {p0, v1}, Lcom/sleepycat/util/ConfigBeanInfoBase;->loadImage(Ljava/lang/String;)Ljava/awt/Image;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconColor32:Ljava/awt/Image;

    .line 263
    :cond_5
    sget-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconColor32:Ljava/awt/Image;

    return-object v0

    .line 247
    :pswitch_3
    sget-object v1, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconNameC16:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 248
    return-object v0

    .line 250
    :cond_6
    sget-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconColor16:Ljava/awt/Image;

    if-nez v0, :cond_7

    .line 251
    invoke-virtual {p0, v1}, Lcom/sleepycat/util/ConfigBeanInfoBase;->loadImage(Ljava/lang/String;)Ljava/awt/Image;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconColor16:Ljava/awt/Image;

    .line 253
    :cond_7
    sget-object v0, Lcom/sleepycat/util/ConfigBeanInfoBase;->iconColor16:Ljava/awt/Image;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPropertyDescriptors(Ljava/lang/Class;)[Ljava/beans/PropertyDescriptor;
    .locals 1
    .param p1, "cls"    # Ljava/lang/Class;

    .line 185
    const/4 v0, 0x0

    return-object v0
.end method
