.class public interface abstract Lorg/jctools/util/UnsafeJvmInfo;
.super Ljava/lang/Object;
.source "UnsafeJvmInfo.java"


# static fields
.field public static final PAGE_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->pageSize()I

    move-result v0

    sput v0, Lorg/jctools/util/UnsafeJvmInfo;->PAGE_SIZE:I

    return-void
.end method
