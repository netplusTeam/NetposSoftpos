.class Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter$1;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;-><init>(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "[",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;

.field final synthetic val$classOfT:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;

    .line 869
    .local p0, "this":Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter$1;, "Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter$1;"
    iput-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter$1;->this$0:Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;

    iput-object p2, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter$1;->val$classOfT:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 869
    .local p0, "this":Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter$1;, "Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter$1;"
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter$1;->run()[Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public run()[Ljava/lang/reflect/Field;
    .locals 7

    .line 871
    .local p0, "this":Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter$1;, "Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter$1;"
    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter$1;->val$classOfT:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 872
    .local v0, "fields":[Ljava/lang/reflect/Field;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 873
    .local v1, "constantFieldsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 874
    .local v5, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 875
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    .end local v5    # "f":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 879
    :cond_1
    new-array v2, v3, [Ljava/lang/reflect/Field;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    .line 880
    .local v2, "constantFields":[Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 881
    return-object v2
.end method
