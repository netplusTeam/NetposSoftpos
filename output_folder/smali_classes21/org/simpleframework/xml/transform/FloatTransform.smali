.class Lorg/simpleframework/xml/transform/FloatTransform;
.super Ljava/lang/Object;
.source "FloatTransform.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/transform/Transform<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 55
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/FloatTransform;->read(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Float;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Float;

    .line 69
    invoke-virtual {p1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/transform/FloatTransform;->write(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
