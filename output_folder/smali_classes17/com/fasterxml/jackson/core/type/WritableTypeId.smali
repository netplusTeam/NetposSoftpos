.class public Lcom/fasterxml/jackson/core/type/WritableTypeId;
.super Ljava/lang/Object;
.source "WritableTypeId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;
    }
.end annotation


# instance fields
.field public asProperty:Ljava/lang/String;

.field public extra:Ljava/lang/Object;

.field public forValue:Ljava/lang/Object;

.field public forValueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/Object;

.field public include:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

.field public valueShape:Lcom/fasterxml/jackson/core/JsonToken;

.field public wrapperWritten:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonToken;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "valueShape0"    # Lcom/fasterxml/jackson/core/JsonToken;

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/type/WritableTypeId;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "valueShape0"    # Lcom/fasterxml/jackson/core/JsonToken;
    .param p3, "id0"    # Ljava/lang/Object;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/fasterxml/jackson/core/type/WritableTypeId;->forValue:Ljava/lang/Object;

    .line 184
    iput-object p3, p0, Lcom/fasterxml/jackson/core/type/WritableTypeId;->id:Ljava/lang/Object;

    .line 185
    iput-object p2, p0, Lcom/fasterxml/jackson/core/type/WritableTypeId;->valueShape:Lcom/fasterxml/jackson/core/JsonToken;

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p3, "valueShape0"    # Lcom/fasterxml/jackson/core/JsonToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/core/JsonToken;",
            ")V"
        }
    .end annotation

    .line 172
    .local p2, "valueType0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/fasterxml/jackson/core/type/WritableTypeId;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    .line 173
    iput-object p2, p0, Lcom/fasterxml/jackson/core/type/WritableTypeId;->forValueType:Ljava/lang/Class;

    .line 174
    return-void
.end method
