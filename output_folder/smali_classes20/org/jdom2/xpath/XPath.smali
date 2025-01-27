.class public abstract Lorg/jdom2/xpath/XPath;
.super Ljava/lang/Object;
.source "XPath.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/xpath/XPath$XPathString;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_XPATH_CLASS:Ljava/lang/String; = "org.jdom2.xpath.jaxen.JDOMXPath"

.field public static final JDOM_OBJECT_MODEL_URI:Ljava/lang/String; = "http://jdom.org/jaxp/xpath/jdom"

.field private static final XPATH_CLASS_PROPERTY:Ljava/lang/String; = "org.jdom2.xpath.class"

.field private static constructor:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lorg/jdom2/xpath/XPath;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0xc8L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    const/4 v0, 0x0

    sput-object v0, Lorg/jdom2/xpath/XPath;->constructor:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/jdom2/xpath/XPath;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    const-string v0, "org.jdom2.xpath.jaxen.JDOMXPath"

    .line 126
    :try_start_0
    sget-object v1, Lorg/jdom2/xpath/XPath;->constructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Lorg/jdom2/JDOMException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_1

    .line 130
    const/4 v1, 0x0

    :try_start_1
    const-string v2, "org.jdom2.xpath.class"

    invoke-static {v2, v0}, Lorg/jdom2/internal/SystemProperty;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/jdom2/JDOMException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    .local v0, "className":Ljava/lang/String;
    goto :goto_0

    .line 133
    .end local v0    # "className":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 135
    .local v1, "className":Ljava/lang/String;
    .local v2, "ex1":Ljava/lang/SecurityException;
    nop

    .end local v1    # "className":Ljava/lang/String;
    .restart local v0    # "className":Ljava/lang/String;
    nop

    .line 138
    .end local v2    # "ex1":Ljava/lang/SecurityException;
    :goto_0
    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 139
    .local v1, "useclass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jdom2/xpath/XPath;>;"
    const-class v2, Lorg/jdom2/xpath/XPath;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-static {v1}, Lorg/jdom2/xpath/XPath;->setXPathClass(Ljava/lang/Class;)V

    goto :goto_1

    .line 140
    :cond_0
    new-instance v2, Lorg/jdom2/JDOMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create a JDOMXPath from class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    .end local p0    # "path":Ljava/lang/String;
    throw v2

    .line 145
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "useclass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jdom2/xpath/XPath;>;"
    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    :goto_1
    sget-object v0, Lorg/jdom2/xpath/XPath;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/xpath/XPath;
    :try_end_2
    .catch Lorg/jdom2/JDOMException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    .line 157
    :catch_1
    move-exception v0

    .line 159
    .local v0, "ex3":Ljava/lang/Exception;
    new-instance v1, Lorg/jdom2/JDOMException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 150
    .end local v0    # "ex3":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 152
    .local v0, "ex2":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 154
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Lorg/jdom2/JDOMException;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lorg/jdom2/JDOMException;

    goto :goto_2

    :cond_2
    new-instance v2, Lorg/jdom2/JDOMException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    throw v2

    .line 147
    .end local v0    # "ex2":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    .line 148
    .local v0, "ex1":Lorg/jdom2/JDOMException;
    throw v0
.end method

.method public static selectNodes(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 353
    invoke-static {p1}, Lorg/jdom2/xpath/XPath;->newInstance(Ljava/lang/String;)Lorg/jdom2/xpath/XPath;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jdom2/xpath/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static selectSingleNode(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 384
    invoke-static {p1}, Lorg/jdom2/xpath/XPath;->newInstance(Ljava/lang/String;)Lorg/jdom2/xpath/XPath;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jdom2/xpath/XPath;->selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static setXPathClass(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jdom2/xpath/XPath;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 176
    .local p0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jdom2/xpath/XPath;>;"
    if-eqz p0, :cond_1

    .line 181
    :try_start_0
    const-class v0, Lorg/jdom2/xpath/XPath;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lorg/jdom2/xpath/XPath;->constructor:Ljava/lang/reflect/Constructor;

    .line 197
    nop

    .line 198
    return-void

    .line 187
    :cond_0
    new-instance v0, Lorg/jdom2/JDOMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a concrete JDOM XPath implementation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    .end local p0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jdom2/xpath/XPath;>;"
    throw v0
    :try_end_0
    .catch Lorg/jdom2/JDOMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .restart local p0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jdom2/xpath/XPath;>;"
    :catch_0
    move-exception v0

    .line 196
    .local v0, "ex2":Ljava/lang/Exception;
    new-instance v1, Lorg/jdom2/JDOMException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 191
    .end local v0    # "ex2":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 192
    .local v0, "ex1":Lorg/jdom2/JDOMException;
    throw v0

    .line 177
    .end local v0    # "ex1":Lorg/jdom2/JDOMException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "aClass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 314
    invoke-static {p1, p2}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom2/xpath/XPath;->addNamespace(Lorg/jdom2/Namespace;)V

    .line 315
    return-void
.end method

.method public abstract addNamespace(Lorg/jdom2/Namespace;)V
.end method

.method public abstract getXPath()Ljava/lang/String;
.end method

.method public abstract numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation
.end method

.method public abstract selectNodes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation
.end method

.method public abstract selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation
.end method

.method public abstract setVariable(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation
.end method

.method protected final writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 409
    new-instance v0, Lorg/jdom2/xpath/XPath$XPathString;

    invoke-virtual {p0}, Lorg/jdom2/xpath/XPath;->getXPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom2/xpath/XPath$XPathString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
