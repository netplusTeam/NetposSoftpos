.class public Lorg/xmlpull/mxp1/MXParserFactory;
.super Lorg/xmlpull/v1/XmlPullParserFactory;
.source "MXParserFactory.java"


# static fields
.field protected static stringCachedParserAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lorg/xmlpull/mxp1/MXParserFactory;->stringCachedParserAvailable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "pp":Lorg/xmlpull/v1/XmlPullParser;
    sget-boolean v1, Lorg/xmlpull/mxp1/MXParserFactory;->stringCachedParserAvailable:Z

    if-eqz v1, :cond_0

    .line 36
    :try_start_0
    new-instance v1, Lorg/xmlpull/mxp1/MXParserCachingStrings;

    invoke-direct {v1}, Lorg/xmlpull/mxp1/MXParserCachingStrings;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    sput-boolean v2, Lorg/xmlpull/mxp1/MXParserFactory;->stringCachedParserAvailable:Z

    .line 41
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 42
    new-instance v1, Lorg/xmlpull/mxp1/MXParser;

    invoke-direct {v1}, Lorg/xmlpull/mxp1/MXParser;-><init>()V

    move-object v0, v1

    .line 44
    :cond_1
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParserFactory;->features:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_2

    .line 51
    return-object v0

    .line 45
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 46
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParserFactory;->features:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 47
    .local v3, "value":Ljava/lang/Boolean;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 48
    const/4 v4, 0x1

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_1

    .line 47
    :cond_3
    goto :goto_1
.end method

.method public newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/xmlpull/mxp1_serializer/MXSerializer;

    invoke-direct {v0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;-><init>()V

    return-object v0
.end method
