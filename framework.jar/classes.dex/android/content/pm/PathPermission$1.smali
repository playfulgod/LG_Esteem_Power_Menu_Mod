.class final Landroid/content/pm/PathPermission$1;
.super Ljava/lang/Object;
.source "PathPermission.java"


# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PathPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/content/pm/PathPermission;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PathPermission;
    .registers 3
    .parameter "source"

    .prologue
    .line 61
    new-instance v0, Landroid/content/pm/PathPermission;

    invoke-direct {v0, p1}, Landroid/content/pm/PathPermission;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Landroid/content/pm/PathPermission$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PathPermission;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/PathPermission;
    .registers 3
    .parameter "size"

    .prologue
    .line 65
    new-array v0, p1, [Landroid/content/pm/PathPermission;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Landroid/content/pm/PathPermission$1;->newArray(I)[Landroid/content/pm/PathPermission;

    move-result-object v0

    return-object v0
.end method
