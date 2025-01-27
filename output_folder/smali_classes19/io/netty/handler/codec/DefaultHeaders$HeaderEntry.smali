.class public Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
.super Ljava/lang/Object;
.source "DefaultHeaders.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/DefaultHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HeaderEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field protected after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field protected before:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field protected final hash:I

.field protected final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field protected next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1150
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1151
    const/4 v0, -0x1

    iput v0, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->hash:I

    .line 1152
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    .line 1153
    iput-object p0, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object p0, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->before:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1154
    return-void
.end method

.method protected constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)V"
        }
    .end annotation

    .line 1134
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1135
    iput p1, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->hash:I

    .line 1136
    iput-object p2, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    .line 1137
    return-void
.end method

.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)V
    .locals 1
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1139
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    .local p5, "head":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1140
    iput p1, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->hash:I

    .line 1141
    iput-object p2, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    .line 1142
    iput-object p3, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->value:Ljava/lang/Object;

    .line 1143
    iput-object p4, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1145
    iput-object p5, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1146
    iget-object v0, p5, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->before:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->before:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1147
    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->pointNeighborsToThis()V

    .line 1148
    return-void
.end method


# virtual methods
.method public final after()Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1166
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    return-object v0
.end method

.method public final before()Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1162
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->before:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1199
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1200
    return v1

    .line 1202
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1203
    .local v0, "other":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1204
    :goto_0
    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    nop

    .line 1203
    :goto_2
    return v1
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1176
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1181
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1209
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method protected final pointNeighborsToThis()V
    .locals 1

    .line 1157
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->before:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object p0, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1158
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object p0, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->before:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1159
    return-void
.end method

.method protected remove()V
    .locals 2

    .line 1170
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->before:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iget-object v1, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v1, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1171
    iget-object v1, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v0, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->before:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1172
    return-void
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1186
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const-string v0, "value"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1187
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->value:Ljava/lang/Object;

    .line 1188
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->value:Ljava/lang/Object;

    .line 1189
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1194
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
