.class Lorg/apache/commons/lang/text/StrLookup$MapStrLookup;
.super Lorg/apache/commons/lang/text/StrLookup;
.source "StrLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/text/StrLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MapStrLookup"
.end annotation


# instance fields
.field private final map:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .param p1, "map"    # Ljava/util/Map;

    .line 144
    invoke-direct {p0}, Lorg/apache/commons/lang/text/StrLookup;-><init>()V

    .line 145
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrLookup$MapStrLookup;->map:Ljava/util/Map;

    .line 146
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrLookup$MapStrLookup;->map:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 159
    return-object v1

    .line 161
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 162
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 163
    return-object v1

    .line 165
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
