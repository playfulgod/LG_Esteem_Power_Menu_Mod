.class public abstract Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.super Landroid/os/Binder;
.source "IAppWidgetService.java"


# interfaces
.implements Lcom/android/internal/appwidget/IAppWidgetService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/appwidget/IAppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.appwidget.IAppWidgetService"

.field static final TRANSACTION_allocateAppWidgetId:I = 0x3

.field static final TRANSACTION_bindAppWidgetId:I = 0xc

.field static final TRANSACTION_deleteAllHosts:I = 0x6

.field static final TRANSACTION_deleteAppWidgetId:I = 0x4

.field static final TRANSACTION_deleteHost:I = 0x5

.field static final TRANSACTION_getAppWidgetIds:I = 0xd

.field static final TRANSACTION_getAppWidgetInfo:I = 0xb

.field static final TRANSACTION_getAppWidgetViews:I = 0x7

.field static final TRANSACTION_getInstalledProviders:I = 0xa

.field static final TRANSACTION_startListening:I = 0x1

.field static final TRANSACTION_stopListening:I = 0x2

.field static final TRANSACTION_updateAppWidgetIds:I = 0x8

.field static final TRANSACTION_updateAppWidgetProvider:I = 0x9



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v1, 0x0

    .line 31
    :goto_3
    return-object v1

    .line 27
    :cond_4
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/appwidget/IAppWidgetService;

    if-eqz v1, :cond_14

    .line 29
    check-cast v0, Lcom/android/internal/appwidget/IAppWidgetService;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v8, "com.android.internal.appwidget.IAppWidgetService"

    .line 39
    sparse-switch p1, :sswitch_data_17a

    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_b
    return v6

    .line 43
    :sswitch_c
    const-string v6, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 44
    goto :goto_b

    .line 48
    :sswitch_13
    const-string v6, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetHost;

    move-result-object v0

    .line 52
    .local v0, _arg0:Lcom/android/internal/appwidget/IAppWidgetHost;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 56
    .local v2, _arg2:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v3, _arg3:Ljava/util/List;,"Ljava/util/List<Landroid/widget/RemoteViews;>;"
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I

    move-result-object v4

    .line 58
    .local v4, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 60
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v6, v7

    .line 61
    goto :goto_b

    .line 65
    .end local v0       #_arg0:Lcom/android/internal/appwidget/IAppWidgetHost;,
    .end local v1       #_arg1:Ljava/lang/String;,
    .end local v2       #_arg2:I,
    .end local v3       #_arg3:Ljava/util/List;,, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    .end local v4       #_result:[I,
    :sswitch_3c
    const-string v6, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->stopListening(I)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 70
    goto :goto_b

    .line 74
    .end local v0       #_arg0:I,
    :sswitch_4d
    const-string v6, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->allocateAppWidgetId(Ljava/lang/String;I)I

    move-result v4

    .line 80
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 82
    goto :goto_b

    .line 86
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_arg1:I,
    .end local v4       #_result:I,
    :sswitch_66
    const-string v6, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteAppWidgetId(I)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 91
    goto :goto_b

    .line 95
    .end local v0       #_arg0:I,
    :sswitch_77
    const-string v6, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .restart local v0       #_arg0:I,
    invoke-virtual {p0, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteHost(I)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 100
    goto :goto_b

    .line 104
    .end local v0       #_arg0:I,
    :sswitch_88
    const-string v6, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteAllHosts()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 107
    goto/16 :goto_b

    .line 111
    :sswitch_96
    const-string v6, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    .restart local v0       #_arg0:I,
    invoke-virtual {p0, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetViews(I)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 115
    .local v4, _result:Landroid/widget/RemoteViews;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v4, :cond_b1

    .line 117
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    invoke-virtual {v4, p3, v7}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_ae
    move v6, v7

    .line 123
    goto/16 :goto_b

    .line 121
    :cond_b1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ae

    .line 127
    .end local v0       #_arg0:I,
    .end local v4       #_result:Landroid/widget/RemoteViews;,
    :sswitch_b5
    const-string v6, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 131
    .local v0, _arg0:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d5

    .line 132
    sget-object v6, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 137
    .local v1, _arg1:Landroid/widget/RemoteViews;
    :goto_cc
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetIds([ILandroid/widget/RemoteViews;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 139
    goto/16 :goto_b

    .line 135
    .end local v1       #_arg1:Landroid/widget/RemoteViews;,
    :cond_d5
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/widget/RemoteViews;,
    goto :goto_cc

    .line 143
    .end local v0       #_arg0:[I,
    .end local v1       #_arg1:Landroid/widget/RemoteViews;,
    :sswitch_d7
    const-string v6, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_101

    .line 146
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 152
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_103

    .line 153
    sget-object v6, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 158
    .restart local v1       #_arg1:Landroid/widget/RemoteViews;,
    :goto_f8
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 160
    goto/16 :goto_b

    .line 149
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v1       #_arg1:Landroid/widget/RemoteViews;,
    :cond_101
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_ea

    .line 156
    :cond_103
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/widget/RemoteViews;,
    goto :goto_f8

    .line 164
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v1       #_arg1:Landroid/widget/RemoteViews;,
    :sswitch_105
    const-string v6, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getInstalledProviders()Ljava/util/List;

    move-result-object v5

    .line 166
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v6, v7

    .line 168
    goto/16 :goto_b

    .line 172
    .end local v5       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :sswitch_117
    const-string v6, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 176
    .local v4, _result:Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v4, :cond_132

    .line 178
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    invoke-virtual {v4, p3, v7}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_12f
    move v6, v7

    .line 184
    goto/16 :goto_b

    .line 182
    :cond_132
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12f

    .line 188
    .end local v0       #_arg0:I,
    .end local v4       #_result:Landroid/appwidget/AppWidgetProviderInfo;,
    :sswitch_136
    const-string v6, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 192
    .restart local v0       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_156

    .line 193
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 198
    .local v1, _arg1:Landroid/content/ComponentName;
    :goto_14d
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 200
    goto/16 :goto_b

    .line 196
    .end local v1       #_arg1:Landroid/content/ComponentName;,
    :cond_156
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/ComponentName;,
    goto :goto_14d

    .line 204
    .end local v0       #_arg0:I,
    .end local v1       #_arg1:Landroid/content/ComponentName;,
    :sswitch_158
    const-string v6, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_178

    .line 207
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 212
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_16b
    invoke-virtual {p0, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v4

    .line 213
    .local v4, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    move v6, v7

    .line 215
    goto/16 :goto_b

    .line 210
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v4       #_result:[I,
    :cond_178
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_16b

    .line 39
    :sswitch_data_17a
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_3c
        0x3 -> :sswitch_4d
        0x4 -> :sswitch_66
        0x5 -> :sswitch_77
        0x6 -> :sswitch_88
        0x7 -> :sswitch_96
        0x8 -> :sswitch_b5
        0x9 -> :sswitch_d7
        0xa -> :sswitch_105
        0xb -> :sswitch_117
        0xc -> :sswitch_136
        0xd -> :sswitch_158
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
