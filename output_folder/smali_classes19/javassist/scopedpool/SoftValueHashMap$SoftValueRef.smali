.class Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;
.super Ljava/lang/ref/SoftReference;
.source "SoftValueHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/scopedpool/SoftValueHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoftValueRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;, "Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    .local p3, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 43
    iput-object p1, p0, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;->key:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/ref/ReferenceQueue;

    .line 38
    invoke-static {p0, p1, p2}, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;->create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;

    move-result-object v0

    return-object v0
.end method

.method private static create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)",
            "Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef<",
            "TK;TV;>;"
        }
    .end annotation

    .line 48
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    .local p2, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    if-nez p1, :cond_0

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;

    invoke-direct {v0, p0, p1, p2}, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
.end method
